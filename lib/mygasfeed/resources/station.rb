module Mygasfeed
  Station = BaseStruct.new :country, :reg_price, :mid_price, :pre_price, :diesel_price, :address,
                           :diesel, :id, :lat, :lng, :station, :region, :city,
                           :reg_date, :mid_date, :pre_date, :diesel_date, :distance do

    def self.build raw
      new get_str(raw["country"]),
          get_f(raw["reg_price"]),
          get_f(raw["mid_price"]),
          get_f(raw["pre_price"]),
          get_f(raw["diesel_price"]),
          get_str(raw["address"]),
          get_bool(raw["diesel"]),
          get_i(raw["id"]),
          get_f(raw["lat"]),
          get_f(raw["lng"]),
          get_str(raw["station"]),
          get_str(raw["region"]),
          get_str(raw["city"]),
          get_str(raw["reg_date"]),
          get_str(raw["mid_date"]),
          get_str(raw["pre_date"]),
          get_str(raw["diesel_date"]),
          get_str(raw["distance"])
    end

  end
end
