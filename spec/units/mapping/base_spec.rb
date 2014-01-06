class MappingExample < ThetvdbMapper::Mapping::Base
  def convert
    {}
  end
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
      klass.should_receive(:convert)
      klass.map(sample: 'test')
    end
  end
end