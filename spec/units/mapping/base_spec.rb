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
  end
end