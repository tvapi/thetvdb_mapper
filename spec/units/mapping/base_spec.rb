class MappingExample < ThetvdbMapper::Mapping::Base
end

describe ThetvdbMapper::Mapping::Banner do
  let(:klass) { MappingExample }

  describe '#map' do
    before do
      klass.stub(:rules).and_return(sample: :example)
    end

    it 'should convert hash' do
      klass.map(sample: 'test').should == { example: 'test' }
    end

    it 'should call convert method if exists' do
      klass.stub(:respond_to?).with(:convert).and_return(true)
      klass.should_receive(:convert).and_return({})
      klass.map(sample: 'test')
    end
  end

  describe '#convert_to_list' do
    it 'should return correct hash' do
      ThetvdbMapper::Mapping::StringList.should_receive(:map).with('test')
      klass.convert_to_list('test')
    end
  end
end