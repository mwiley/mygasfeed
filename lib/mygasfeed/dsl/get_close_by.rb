module Mygasfeed

  class << self

    # Retrieve a list of other gas stations that are close by to a
    # particular station by just suppling the station id. 
    def get_close_by station_id, limit
      response = request '/locations/otherclosebystations/', [station_id, limit]
      response['stations'].map { |station| Station.build station }
    end

  end

end
