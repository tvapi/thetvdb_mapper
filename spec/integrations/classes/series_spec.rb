require 'integrations/integration_spec_helper'

describe ThetvdbMapper::Series do
  let(:model) { ThetvdbMapper::Series.new(80348) }

  describe '.data' do
    it 'should return array' do
      model.data.class.should == Hash
    end
  end
end
