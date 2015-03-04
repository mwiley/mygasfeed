require 'spec_helper'

describe Mygasfeed do
  describe '.get_history' do
    subject { described_class.get_history station_id }

    context "when valid params are given" do
      let(:station_id)  { 101595 }


      context 'when request succeeds' do
        it { should be_an Array }

      end
    end

  end
end
