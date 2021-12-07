require_relative 'lib/http-parser/version'

Gem::Specification.new do |spec|
  spec.name          = 'parse-http'
  spec.version       =  HttpParser::VERSION
  spec.authors       = ['Adem Dinarevic']
  spec.email         = ['ademdinarevic@gmail.com']
  spec.homepage      = 'https://github.com/ademdc/parse-http'
  spec.license       = 'MIT'
  spec.summary       = "Ruby client for Etsy API"
  spec.description   = "Ruby client for Etsy API"
  spec.require_paths = ['lib']
  
  spec.files         =  %w[
    lib/http-parser.rb
    lib/http-parser/version.rb
  ]

  spec.required_ruby_version = '>= 2.5.8'
  spec.add_development_dependency 'rspec', '~> 3.0'

end