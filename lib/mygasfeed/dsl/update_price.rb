module Mygasfeed

  class << self

    # Updates gas prices for a particular station.
    #   Input: price - Actual gas price. Format (3.64)
    #          fuel type - Type of fuel. Arguments to be passed: reg,mid,pre,diesel
    #          station id - The current location id of the station that will be updated.
    def update_price price, fuel_type, station_id
      response = post '/locations/price/', body: {price: price, fueltype: fuel_type, stationid: station_id}
      Station.build response['details']
    end

  end

end
