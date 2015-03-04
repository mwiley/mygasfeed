module Mygasfeed
  Location = BaseStruct.new :country_short, :lat, :lng, :country_long,
                              :region_short, :region_long, :city_long,
                              :city_short, :address, :result  do

    def self.build raw
      new get_str(raw["country_short"]),
          get_f(raw["lat"]),
          get_f(raw["lng"]),
          get_str(raw["country_long"]),
          get_str(raw["region_short"]),
          get_str(raw["region_long"]),
          get_str(raw["city_long"]),
          get_str(raw["city_short"]),
          get_str(raw["address"]),
          get_str(raw["result"])
    end

  end
end
