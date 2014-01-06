require 'spec_helper'

describe ThetvdbMapper::Series do
  let(:model) { ThetvdbMapper::Series.new(1) }

  describe '.data' do
    before do
      model.stub_chain(:fetcher, :series, :body).and_return(sample: true)
    end

    it 'should call map on mapping class' do
      ThetvdbMapper::Mapping::Series.should_receive(:map).with(sample: true)
      model.data
    end
  end

  describe '.inspect' do
    before do
      model.stub(:data).and_return('DATA')
    end

    it 'should return correct string' do
      model.inspect.should == '<ThetvdbMapper::Series data=DATA >'
    end
  end
end
