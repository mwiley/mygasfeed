require 'spec_helper'

describe Mygasfeed do
  describe '.get_address' do
    subject { described_class.get_address(lat, lng) }

    context "when valid params are given" do
      let(:lat)  { 45.5092499 }
      let(:lng)  { -73.7167247 }


      context 'when request succeeds' do
        it { should be_an Object }

        it "should contain Mygasfeed:Location objects" do
          subject.should be_a Mygasfeed::Location
        end
      end
    end

  end
end
