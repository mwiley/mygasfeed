require 'spec_helper'

describe Mygasfeed do
  describe '.get_close_by' do
    subject { described_class.get_close_by(station_id, limit) }

    context "when valid params are given" do
      let(:station_id)  { 101595 }
      let(:limit) { 5 }


      context 'when request succeeds' do
        it { should be_an Array }
        it { should_not be_empty }

        it "should contain Mygasfeed:Station objects" do
          expect(subject.first).to be_a(Mygasfeed::Station)
        end
      end
    end

  end
end
