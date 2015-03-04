module Mygasfeed

  class << self

    # Updates gas prices for a particular station.
    # `price` - Actual gas price. Format (3.64)
    # `fuel_type` - reg, mid, pre, or diesel
    def update_price price, fuel_type, station_id
      response = post '/locations/price/', body: {price: price, fueltype: fuel_type, stationid: station_id}
      Station.build response['details']
    end

  end

end
