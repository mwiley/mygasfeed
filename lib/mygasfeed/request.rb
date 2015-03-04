require 'httparty'
require 'addressable/uri'

module Mygasfeed

  class << self

    def request path, params={}
      response = HTTParty.get _build_url(path, params)
      JSON.parse response.body
    end

    def post path, params={}
      response = HTTParty.post _build_url(path), params
      JSON.parse response.body
    end

    def _build_url path, params=[]
      uri = API_URL + path
      params.each { |param| uri = uri + param.to_s + '/' }
      uri = uri + API_KEY + ".json"
    end

  end
end
