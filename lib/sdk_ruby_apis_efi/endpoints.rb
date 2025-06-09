# frozen_string_literal: true

require "net/http"
require "uri"
require "http"
require "cgi"
require "json"
require "base64"
require_relative "constants"
require_relative "status"
require_relative "version"

module SdkRubyApisEfi
  class Endpoints
    def initialize(options)
      super()
      @token = nil
      @options = options
      @charges = Constants::APIs::CHARGES
      @pix = Constants::APIs::PIX
      @open_finance = Constants::APIs::OPEN_FINANCE
      @payments = Constants::APIs::PAYMENTS
      @accounts_opening = Constants::APIs::ACCOUNTS_OPENING
      # HTTP.default_options = HTTP::Options.new(features: {
      #                                      logging: {
      #                                        logger: Logger.new(STDOUT)
      #                                      }
      #                                    })
    end

    def method_missing(name, **kwargs)
      if @charges[:ENDPOINTS].include?(name)
        @endpoints = @charges[:ENDPOINTS]
        @urls = @charges[:URL]
        request(@charges[:ENDPOINTS][name], **kwargs)

      elsif @pix[:ENDPOINTS].include?(name)
        @endpoints = @pix[:ENDPOINTS]
        @urls = @pix[:URL]
        request(@pix[:ENDPOINTS][name], **kwargs)

      elsif @open_finance[:ENDPOINTS].include?(name)
        @endpoints = @open_finance[:ENDPOINTS]
        @urls = @open_finance[:URL]
        request(@open_finance[:ENDPOINTS][name], **kwargs)

      elsif @payments[:ENDPOINTS].include?(name)
        @endpoints = @payments[:ENDPOINTS]
        @urls = @payments[:URL]
        request(@payments[:ENDPOINTS][name], **kwargs)

      elsif @accounts_opening[:ENDPOINTS].include?(name)
        @endpoints = @accounts_opening[:ENDPOINTS]
        @urls = @accounts_opening[:URL]
        request(@accounts_opening[:ENDPOINTS][name], **kwargs)

      else
        raise "Method not found"
      end
    end

    def request(settings, **kwargs)
      params = kwargs[:params] || {}
      body = kwargs[:body] || {}
      headers = kwargs[:headers] || {}

      get_url

      authenticate if @token.nil?

      response = send(settings, params, body, headers)

      begin
        JSON.parse(response.body)
      rescue JSON::ParserError
        "{'code': #{response.code}}"
      else
        JSON.parse(response.body)
      end
    end

    def send(settings, params, body, headersComplement)
      url = build_url(settings[:route], params)
      body = nil if body == {}
      headers = {
        "accept" => "application/json",
        "api-sdk" => "efi-ruby-#{SdkRubyApisEfi::VERSION}"
      }

      if headersComplement.any?
        headersComplement.each do |key, value|
          headers[key] = value
        end
      end

      headers["partner-token"] = @options[:partner_token] if @options.key?(:partner_token)

      headers["x-skip-mtls-checking"] = @options[:"x-skip-mtls-checking"] if @options[:"x-skip-mtls-checking"]

      #@token = @token.parse

      if @options.key?(:certificate)

        HTTP
          .headers(headers)
          .auth("Bearer #{@token["access_token"]}")
          .method(settings[:method])
          .call(url, json: body, ssl_context: OpenSSL::SSL::SSLContext.new.tap do |ctx|
            ctx.set_params(
              cert: OpenSSL::X509::Certificate.new(File.read(@options[:certificate])),
              key: OpenSSL::PKey::RSA.new(File.read(@options[:certificate]))
            )
          end)
      else

        HTTP
          .headers(headers)
          .auth("Bearer #{@token["access_token"]}")
          .method(settings[:method])
          .call(url, json: body)
      end
    end

    def authenticate
      url = build_url(@endpoints[:authorize][:route], {})

      headers = {
        "accept" => "application/json",
        "api-sdk" => "efi-ruby-#{SdkRubyApisEfi::VERSION}"
      }

      auth_headers = {
        user: @options[:client_id],
        pass: @options[:client_secret]
      }

      auth_body = { grant_type: :client_credentials }

      response = if @options.key?(:certificate)

                   HTTP
                     .headers(headers)
                     .basic_auth(auth_headers)
                     .post(url, json: auth_body, ssl_context: OpenSSL::SSL::SSLContext.new.tap do |ctx|
                       ctx.set_params(
                         cert: OpenSSL::X509::Certificate.new(File.read(@options[:certificate])),
                         key: OpenSSL::PKey::RSA.new(File.read(@options[:certificate]))
                       )
                     end)

                 else
                   HTTP
                     .headers(headers)
                     .basic_auth(auth_headers)
                     .post(url, json: auth_body)
                 end

      raise "unable to authenticate" if response.status.to_s == STATUS::UNAUTHORIZED

      @token = response.parse
    end

    def get_url
      @base_url = @urls[:sandbox]
      return unless @options.key?(:sandbox)

      @base_url = @options[:sandbox] ? @urls[:sandbox] : @urls[:production]
    end

    def build_url(route, params)
      params = {} if params.nil?
      route = remove_placeholders(route, params)
      complete_url(route, params)
    end

    def remove_placeholders(route, params)
      regex = /:(\w+)/
      route.scan(regex).each do |key|
        key = key[0]
        value = params[key.to_sym].to_s
        route = route.gsub(":#{key}", value)
        params.delete(key.to_sym)
      end

      route
    end

    def query_string(params)
      mapped = params.map { |p, value| "#{p}=#{value}" }
      mapped.join("&")
    end

    def map_params(params)
      params.map do |key|
        "#{key[0]}=#{CGI.escape(key[1].to_s)}"
      end.join("&")
    end

    def complete_url(route, params)
      mapped = map_params(params)
      if !mapped.empty?
        "#{@base_url}#{route}?#{mapped}"
      else
        "#{@base_url}#{route}"
      end
    end
  end
end
