module Mygasfeed
  PreviousPrice = BaseStruct.new :type, :price, :date, :via do

    def self.build raw
      new get_str(raw["type"]),
          get_d(raw["price"]),
          get_str(raw["date"]),
          get_str(raw["via"])
    end
    
  end
end
