require "mygasfeed/version"
require "mygasfeed/request"
require "mygasfeed/resources/base_struct.rb"
Dir[File.dirname(__FILE__) + "/mygasfeed/dsl/*.rb"].each { |f| require f  }
Dir[File.dirname(__FILE__) + "/mygasfeed/resources/*.rb"].each { |f| require f  }

module Mygasfeed

   API_URL = 'http://api.mygasfeed.com'
   API_KEY = ENV["MYGASFEED_API_KEY"]

   #API_URL = 'http://devapi.mygasfeed.com/'
   #API_KEY = 'rfej9napna'

end
