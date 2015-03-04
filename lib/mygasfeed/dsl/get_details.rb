module Mygasfeed

  class << self

    # Retrieves gas station details by providing the station id.
    # The station id can be retrieved when making a request for a list of stations.
    def get_details station_id
      response = request '/stations/details/', [station_id]
      Station.build response['details']
    end

  end

end
