module Mygasfeed

  class << self

    # Retrieves a list of gas price histroy for a particular gas station.
    #   Input: station id
    def get_history station_id
        response = request '/locations/pricehistory/', [station_id]
        response['histroy'].map { |price| PreviousPrice.build price }
    end

  end

end
