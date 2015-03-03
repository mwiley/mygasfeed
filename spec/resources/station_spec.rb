require 'spec_helper'
require 'rspec/its'

describe Mygasfeed::Station do
  describe '.build' do
    subject { described_class.build data }

    context 'when valid data provided' do
      let(:data) {
        {
          "country" => "Canada",
          "reg_price" => "3.65",
          "mid_price" => "3.66",
          "pre_price" => "3.67",
          "diesel_price" => "3.68",
          "address" => "3885, Boulevard Saint-Rose",
          "diesel" => "0",
          "id" => "33862",
          "lat" => "45.492367",
          "lng" => "-73.710915",
          "station" => "Shell",
          "region" => "Quebec",
          "city" => "Saint-Laurent",
          "reg_date" => "3 hours ago",
          "mid_date" => "4 hours ago",
          "pre_date" => "5 hours ago",
          "diesel_date" => "6 hours ago",
          "distance" => "1.9km"
        }
      }

      it { should be_a described_class }

      its(:country)      { should eq "Canada"}
      its(:reg_price)    { should eq 3.65 }
      its(:mid_price)    { should eq 3.66 }
      its(:pre_price)    { should eq 3.67 }
      its(:diesel_price) { should eq 3.68 }
      its(:address)      { should eq "3885, Boulevard Saint-Rose" }
      its(:diesel)       { should eq false }
      its(:id)           { should eq 33862 }
      its(:lat)          { should eq 45.492367 }
      its(:lng)          { should eq -73.710915 }
      its(:station)      { should eq "Shell" }
      its(:region)       { should eq "Quebec" }
      its(:city)         { should eq "Saint-Laurent" }
      its(:reg_date)     { should eq "3 hours ago" }
      its(:mid_date)     { should eq "4 hours ago" }
      its(:pre_date)     { should eq "5 hours ago" }
      its(:diesel_date)  { should eq "6 hours ago" }
      its(:distance)     { should eq "1.9km" }
    end

  end
end
