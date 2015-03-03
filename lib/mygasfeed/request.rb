require 'httparty'
require 'addressable/uri'

module Mygasfeed

  class << self

    def request path, params={}
      params.merge! cmd:cmd
      response = HTTParty.get _build_url(params)
      response.parsed_response
    end

    def _build_url path, params={}
      uri = Addressable::URI.parse API_URL
      url.path = path
      uri.query_values = params
      uri.basename = API_KEY
      url.extname = 'json'
      uri.to_s
    end

  end
end
