module Mygasfeed
  Brand = BaseStruct.new :name, :id do

    def self.build raw
      new get_str(raw["name"]),
          get_i(raw["id"])
    end

  end
end
