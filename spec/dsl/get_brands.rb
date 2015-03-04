require 'spec_helper'

describe Mygasfeed do
  describe '.get_brands' do
    subject { described_class.get_brands }

    context 'when request succeeds' do
      it { should be_an Array }
      it { should_not be_empty }

      it "should contain Mygasfeed:Brand objects" do
        expect(subject.first).to be_a(Mygasfeed::Brand)
      end
    end

  end
end
