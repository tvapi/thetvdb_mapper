require 'spec_helper'

describe ThetvdbMapper::Actors do
  let(:model) { ThetvdbMapper::Actors.new(1) }

  describe '.data' do
    before do
      model.stub_chain(:fetcher, :actors, :body).and_return([{}])
    end

    it 'should call map' do
      model.should_receive(:map)
      model.data
    end
  end

  describe '.map' do
    it 'should call map on mapping class' do
      model.stub(:mapping_object).with(sample: true).and_return(double(map: true))
      model.mapping_object(sample: true).should_receive(:map)
      model.map(sample: true)
    end
  end

  describe '.inspect' do
    before do
      model.stub(:data).and_return('DATA')
    end

    it 'should return correct string' do
      model.inspect.should == '<ThetvdbMapper::Actors data=DATA >'
    end
  end

  describe '.mapping_object' do
    it 'should return mapping actor instance' do
      model.mapping_object(sample: true).class.should == ThetvdbMapper::Mapping::Actor
    end
  end
end
