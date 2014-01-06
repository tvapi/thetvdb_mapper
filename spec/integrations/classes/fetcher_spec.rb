require 'integrations/integration_spec_helper'

describe ThetvdbMapper::Fetcher do
  let(:model) { ThetvdbMapper::Fetcher.new }

  describe '.series' do
    it 'should return hash' do
      model.series(80348).body.class.should == Hash
    end
  end

  describe '.full_series' do
    it 'should return hash' do
      model.full_series(80348).body.class.should == Hash
    end
  end

  describe '.actors' do
    it 'should return array' do
      model.actors(80348).body.class.should == Array
    end
  end

  describe '.banners' do
    it 'should return array' do
      model.banners(80348).body.class.should == Array
    end
  end

  describe '.episode' do
    it 'should return hash' do
      model.episode(332179).body.class.should == Hash
    end
  end
end
