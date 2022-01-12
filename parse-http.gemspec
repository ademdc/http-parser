require_relative 'lib/http-parser/version'

Gem::Specification.new do |spec|
  spec.name          = 'parse-http'
  spec.version       =  HttpParser::VERSION
  spec.authors       = ['Adem Dinarevic']
  spec.email         = ['ademdinarevic@gmail.com']
  spec.homepage      = 'https://github.com/ademdc/parse-http'
  spec.license       = 'MIT'
  spec.summary       = "HTTP parser for Ruby"
  spec.description   = "HTTP parser for Ruby"
  spec.require_paths = ['lib']
  spec.bindir        = ['bin']

  
  spec.files         =  %w[
    lib/http-parser.rb
    lib/http-parser/version.rb
  ]

  spec.required_ruby_version = '>= 2.6.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'rake', '~> 13.0.3'

end
