module Mygasfeed

  class << self

    # Retrieves a list of all gas station brands.
    def get_brands
      response = request "/stations/brands/"
      response['stations'].map { |brand| Brand.build brand }
    end

  end

end
