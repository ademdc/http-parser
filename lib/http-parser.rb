require 'http-parser/version'
require 'json'

class HttpParser 
  
  attr_accessor :response

  def initialize(response)
    @response = response

    check_valid_response?(response)
  end

  class << self
    def parse(response)
      response = new(response)
      response.parse
    end
  end

  def parse
    success       = (200..308).to_a.include?(response.code.to_i) ? true : false
    hash_response = JSON.parse(response.body)

    Struct.new(:success?, :hash_response).new(success, hash_response)
  end

  private

  def check_valid_response?(response)
    if response.respond_to?(:each_header)
      raise 'Not a valid response' unless response.each_header.to_h.dig('content-type').include?('application/json')
    elsif response.respond_to?(:headers)
      raise 'Not a valid response' unless response.headers.dig(:content_type).include?('application/json')
    else
      true
    end
  end
end