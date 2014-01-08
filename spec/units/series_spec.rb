require 'spec_helper'

describe ThetvdbMapper::Series do
  let(:model) { ThetvdbMapper::Series.new(1) }

  describe '.data' do
    before do
      model.stub_chain(:fetcher, :series, :body).and_return(sample: true)
    end

    it 'should call map on mapping class' do
      model.stub(:mapping_object).and_return(double(map: true))
      model.mapping_object(sample: true).should_receive(:map)
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

  describe '.mapping_object' do
    it 'should return mapping episode instance' do
      model.mapping_object(sample: true).class.should == ThetvdbMapper::Mapping::Series
    end
  end
end
