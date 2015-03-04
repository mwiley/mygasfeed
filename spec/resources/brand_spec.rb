require 'spec_helper'
require 'rspec/its'

describe Mygasfeed::Brand do
  describe '.build' do
    subject { described_class.build data }

    context 'when valid data provided' do
      let(:data) {
         {
            "id" => "123",
            "name" => "Shell"
        }
      }

      it { should be_a described_class }
      its(:id)   { should eq 123 }
      its(:name)  { should eq "Shell" }
    end

  end
end
