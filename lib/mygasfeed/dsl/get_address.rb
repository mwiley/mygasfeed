module Mygasfeed

  class << self

    # Providing the latitude & longitude of the current location, you will retrieve the full address.
    #   Input: latitude, longitude
    def get_address latitude, longitude
      response = request '/locations/geoaddress/', [latitude, longitude]
      return Location.build response['location']
    end

  end

end
