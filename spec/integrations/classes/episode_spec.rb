require 'integrations/integration_spec_helper'

describe ThetvdbMapper::Episode do
  let(:model) { ThetvdbMapper::Episode.new(332179) }

  describe '.data' do
    it 'should return array' do
      puts model.data.inspect
      model.data.class.should == Hash
    end
  end
end