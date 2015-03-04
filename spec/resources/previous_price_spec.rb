require 'spec_helper'
require 'rspec/its'

describe Mygasfeed::PreviousPrice do
  describe '.build' do
    subject { described_class.build data }

    context 'when valid data provided' do
      let(:data) {
         {
            "type" => "Pre",
            "price" => "3.33",
            "date" => "1 day ago",
            "via" => "myGasFeed Dev"
        }
      }

      it { should be_a described_class }
      its(:type)   { should eq "Pre"}
      its(:price)  { should eq 3.33 }
      its(:date)   { should eq "1 day ago" }
      its(:via)    { should eq "myGasFeed Dev" }
    end

  end
end
