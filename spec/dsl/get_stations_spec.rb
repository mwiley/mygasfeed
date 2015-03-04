require 'spec_helper'

describe Mygasfeed do
  describe '.get_stations' do
    subject { described_class.get_stations(latitude, longitude, distance, fuel_type, sort_by) }

    context "when valid params are given" do
      let(:latitude)  { 39.7400 }
      let(:longitude) { -121.8356 }
      let(:distance)  { 1 }
      let(:fuel_type) { "reg" }
      let(:sort_by)   { "distance" }

      context 'when request succeeds' do
        it { should be_an Array }
        it { should_not be_empty }

        it "should contain Mygasfeed:Station objects" do
          subject.first.should be_a Mygasfeed::Station
        end
      end
    end

  end
end
