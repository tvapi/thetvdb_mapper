require 'integrations/integration_spec_helper'

describe ThetvdbMapper::Banners do
  let(:model) { ThetvdbMapper::Banners.new(80348) }

  describe '.data' do
    it 'should return array' do
      model.data.class.should == Array
    end
  end
end
