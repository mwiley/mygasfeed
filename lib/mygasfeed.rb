require "mygasfeed/version"
require "mygasfeed/request"
Dir[File.dirname(__FILE__) + "/mygasfeed/dsl/*.rb"].each { |f| require f  }
Dir[File.dirname(__FILE__) + "/mygasfeed/resources/*.rb"].each { |f| require f  }

module Mygasfeed

   API_URL = 'http://devapi.mygasfeed.com'
   API_KEY = 'rfej9napna'

end
