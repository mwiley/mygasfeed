# Mygasfeed

Ruby API client for [www.mygasfeed.org](http://www.mygasfeed.com/)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'mygasfeed'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install mygasfeed

## Obtaining an API Key

You need to get an API key from [here](http://www.mygasfeed.com/keys/submit).

You can use it by setting an environment variable from the command line

    export MYGASFEED_API_KEY=your_api_key

Use it when running `rails s`

    MYGASFEED_API_KEY=your_api_key rails s

Or store it in a `.env` file and either use [Foreman](https://github.com/ddollar/foreman) or the [dotenv](https://github.com/bkeepers/dotenv) gem.

    MYGASFEED_API_KEY=your_api_key

## Usage

### Get nearby stations
**Params:** latitude, longitude, distance, fuel_type, sort_by

    Mygasfeed.get_stations 39.7400, -121.8356, 50, "reg", "distance"

### Get price history for a station
**Params:** station_id

    Mygasfeed.get_history 33862

### Get details for a station
**Params:** station_id

    Mygasfeed.get_details 33862

### Get a list of all gas station brands
**Params:** none

    Mygasfeed.get_brands

### Update a gas price
**Params:** price, fuel_type, station_id

    Mygasfeed 4.15, "reg", 33862

### Get an address by latitude and longitude
**Params:** latitude, longitude

    Mygasfeed.get_adddress 39.7400, -121.8356

### Get stations close by another station
**Params:** station_id, limit

    Mygasfeed.get_close_by 33862, 50

## Contributing

1. Fork it ( https://github.com/mwiley/mygasfeed/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
