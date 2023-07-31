# frozen_string_literal: true

require_relative "sdk_ruby_apis_efi/version"
require_relative "sdk_ruby_apis_efi/endpoints"

# Module that just returns an Endpoints instance

module SdkRubyApisEfi
  def self.new(options)
    Endpoints.new(options)
  end
end

