# sdk-ruby-apis-efi

> A ruby gem for integration of your backend with the payment services
provided by [Efí](https://sejaefi.com.br/).


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'sdk_ruby_apis_efi'
```

And then execute:

```bash
$ bundle
```

Or install it yourself as:

```bash
$ gem install sdk_ruby_apis_efi
```

## Tested with
```
ruby 2.7.0
ruby 3.0.4
```

## Basic usage

```ruby
require 'sdk_ruby_apis_efi'

options = {
  client_id: CREDENTIALS::CLIENT_ID,
  client_secret: CREDENTIALS::CLIENT_SECRET,
  sandbox: CREDENTIALS::SANDBOX
}

efipay = SdkRubyApisEfi.new(options)

charge = {
  items: [{
    name: "Product A",
    value: 1000,
    amount: 2
  }]
}

response = efipay.createCharge(body: charge)
puts response
```

## Examples

You can run the examples inside `examples` with the following command:

```bash
$ ruby examples/createCharge.rb
```

Just remember to set the correct credentials inside `examples/credentials.rb` before running.


## Additional documentation

The full documentation with all available endpoints is in https://dev.efipay.com.br/.

## Changelog

[CHANGELOG](https://github.com/efipay/sdk-ruby-apis-efi/tree/master/CHANGELOG.md)

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/efipay/sdk-ruby-apis-efi. This project is intended to be a safe, welcoming space for collaboration.

## License

The gem is available as open source under the terms of the [MIT License](LICENSE).
