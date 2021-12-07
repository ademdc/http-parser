require 'spec_helper'
require 'net/http'

RSpec.describe HttpParser do
  let(:valid_uri) { URI.parse('https://jsonplaceholder.typicode.com/todos/1') }
  let(:invalid_uri) { URI.parse('https://jsonplaceholder.typicode.com/tad') }

  it 'has a version number' do
    expect(HttpParser::VERSION).not_to be nil
  end

  it 'returns a hash of the response when code is 200' do
    response = Net::HTTP.get_response(valid_uri)
    parser = HttpParser.parse(response)
    
    expect(parser).to be_a(Struct)
    expect(parser.success?).to eq(true)
    expect(parser.hash_response).to be_a(Hash)
  end

  it 'returns a hash of the response when code is not 200' do
    response = Net::HTTP.get_response(invalid_uri)
    parser = HttpParser.parse(response)
    
    expect(parser).to be_a(Struct)
    expect(parser.success?).to eq(false)
    expect(parser.hash_response).to be_a(Hash)
  end
end