require 'spec_helper'
require 'rspec/its'

describe Mygasfeed::Location do
  describe '.build' do
    subject { described_class.build data }

    context 'when valid data provided' do
      let(:data) {
         {
            "country_short" => "CA",
            "lat" => "45.5092499",
            "lng" => "-73.7167247",
            "country_long" => "Canada",
            "region_short" => "QC",
            "region_long" => "Quebec",
            "city_long" => "Saint-Laurent",
            "city_short" => "SL",
            "address" => "14073, Boulevard Cavendish",
            "result" =>  "OK"
        }
      }

      it { should be_a described_class }
      
      its(:country_short) { should eq "CA" }
      its(:lat)           { should eq 45.5092499}
      its(:lng)           { should eq -73.7167247 }
      its(:country_long)  { should eq "Canada" }
      its(:region_short)  { should eq "QC" }
      its(:region_long)   { should eq "Quebec" }
      its(:city_long)     { should eq "Saint-Laurent" }
      its(:city_short)    { should eq "SL" }
      its(:address)       { should eq "14073, Boulevard Cavendish" }
      its(:result)        { should eq  "OK" }
    end

  end
end
