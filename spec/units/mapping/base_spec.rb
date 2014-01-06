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
      klass.should_receive(:convert)
      klass.map(sample: 'test')
    end
  end
end