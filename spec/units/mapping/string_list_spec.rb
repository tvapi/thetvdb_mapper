require 'spec_helper'

describe ThetvdbMapper::Mapping::StringList do
  let(:klass) { ThetvdbMapper::Mapping::StringList }

  describe '#map' do
    it 'should return array' do
      klass.map('|test|').should == ['test']
    end
  end
end
