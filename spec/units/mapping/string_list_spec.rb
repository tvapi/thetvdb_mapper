require 'spec_helper'

describe ThetvdbMapper::Mapping::StringList do
  let(:model) { ThetvdbMapper::Mapping::StringList.new('|test|') }

  describe '#map' do
    it 'should return array' do
      model.map.should == ['test']
    end
  end
end
