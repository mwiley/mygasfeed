module Mygasfeed

  class << self

    # Retrieves nearby gas stations according to a user's geo location.
    #   Input: longitude, latitude, distance, fuel_type, sort_by
    def get_stations lat, lng, distance, fuel_type, sort_by
        params = [lat, lng, distance, fuel_type, sort_by]
        response = request "/stations/radius/", params
        response['stations'].map { |station| Station.build station }
    end

  end

end
