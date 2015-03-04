module Mygasfeed

  class << self

    # Providing the latitude & longitude of the current location, you will retrieve the full address.
    #   Input: Station Id - The id of the gas station.
    #          Limit - Number of gas stations needed to be returned.
    def get_close_by station_id, limit
      response = request '/locations/otherclosebystations/', [station_id, limit]
      response['stations'].map { |station| Station.build station }
    end

  end

end
