class MappingExample < ThetvdbMapper::Mapping::Base
end

describe ThetvdbMapper::Mapping::Banner do
  let(:model) { MappingExample.new(sample: 'test') }

  describe '.map' do
    before do
      model.stub(:rules).and_return(sample: :example)
    end

    it 'should convert hash' do
      model.map.should == { example: 'test' }
    end

    it 'should call convert method if exists' do
      model.should_receive(:convert).and_return(sample: true)
      model.map
    end
  end

  describe '.convert_to_list' do
    it 'should return correct hash' do
      model.stub(:list_mapping_object).with('test').and_return(double(map: true))
      model.list_mapping_object('test').should_receive(:map)
      model.convert_to_list('test')
    end
  end

  describe '.list_mapping_object' do
    it 'should return mapping instance' do
      ThetvdbMapper::Mapping::StringList.should_receive(:new)
      model.list_mapping_object('test')
    end
  end
end