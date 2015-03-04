require 'spec_helper'

describe Mygasfeed do
  describe '.update_price' do
    subject { described_class.update_price(price, fuel_type, station_id) }

    context "when valid params are given" do
      let(:price)  { 4.15 }
      let(:fuel_type) { "diesel" }
      let(:station_id)  { 110244 }

      context 'when request succeeds' do
        it "should be a Mygasfeed:Station object" do
          expect(subject).to be_a(Mygasfeed::Station)
        end
      end
    end

  end
end
