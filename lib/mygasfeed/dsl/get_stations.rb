module Mygasfeed

  class << self

    # Retrieves nearby gas stations according to a user's geo location.
    # `Distance` - a number of miles under 50.
    # `fuel_type` - reg, mid, pre, or diesel
    # `sort_by` - distance or price
    def get_stations latitude, longitude, distance, fuel_type, sort_by
        params = [latitude, longitude, distance, fuel_type, sort_by]
        response = request "/stations/radius/", params
        response['stations'].map { |station| Station.build station }
    end

  end

end
