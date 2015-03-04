module Mygasfeed

  class << self

    # Providing the latitude & longitude of the current location, you will retrieve the full address.
    def get_address latitude, longitude
      response = request('/locations/geoaddress/', [latitude, longitude])
      Location.build response['location']
    end

  end

end
