# frozen_string_literal: true

require_relative "lib/sdk_ruby_apis_efi/version"

Gem::Specification.new do |spec|
  spec.name = "sdk_ruby_apis_efi"
  spec.version = SdkRubyApisEfi::VERSION
  spec.authors = ["João Muniz"]
  spec.email = ["consultoria@sejaefi.com.br"]
 
  spec.summary       = "Efí Pay API Ruby Gem"
  spec.description   = "A ruby gem for integration of your backend with the
                        payment services provided by Efí Pay"
 
  spec.homepage      = "https://github.com/efipay/sdk-ruby-apis-efi"
  spec.license       = "MIT"
  spec.required_ruby_version = ">= 2.6.0"


  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:test|spec|features|examples)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "bundler", "~> 2.0"
  spec.add_dependency "rake", "~> 13.0"
  spec.add_dependency "http", "~> 4.3"
  spec.add_dependency "cgi", "~> 0.1"
  spec.add_dependency "json", "~> 2.5"
  spec.add_dependency "base64", "~> 0.1"
  spec.add_dependency "uri", "~> 0.1"
end
