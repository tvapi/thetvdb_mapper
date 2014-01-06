require 'integrations/integration_spec_helper'

describe ThetvdbMapper::Actors do
  let(:model) { ThetvdbMapper::Actors.new(80348) }

  describe '.data' do
    it 'should return array' do
      model.data.class.should == Array
    end
  end
end
