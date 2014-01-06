require 'spec_helper'

describe ThetvdbMapper::Banners do
  let(:model) { ThetvdbMapper::Banners.new(1) }

  describe '.data' do
    before do
      model.stub_chain(:fetcher, :banners, :body).and_return([{}])
    end

    it 'should call map' do
      model.should_receive(:map)
      model.data
    end
  end

  describe '.map' do
    it 'should call map on mapping class' do
      ThetvdbMapper::Mapping::Banner.should_receive(:map).with(sample: true)
      model.map(sample: true)
    end
  end

  describe '.inspect' do
    before do
      model.stub(:data).and_return('DATA')
    end

    it 'should return correct string' do
      model.inspect.should == '<ThetvdbMapper::Banners data=DATA >'
    end
  end
end
