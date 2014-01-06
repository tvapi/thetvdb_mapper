require 'integrations/integration_spec_helper'

describe ThetvdbMapper::FullSeries do
  let(:model) { ThetvdbMapper::FullSeries.new(80348) }

  describe '.data' do
    it 'should return array' do
      model.data.class.should == Hash
    end
  end
end
