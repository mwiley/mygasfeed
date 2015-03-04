require 'spec_helper'

describe Mygasfeed do
  describe '.get_details' do
    subject { described_class.get_details station_id }

    context "when valid params are given" do
      let(:station_id)  { 33862 }

      context 'when request succeeds' do
        it "should be a  Mygasfeed:Station object" do
          expect(subject).to be_a(Mygasfeed::Station)
        end
      end
    end

  end
end
