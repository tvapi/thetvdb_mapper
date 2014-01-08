require 'spec_helper'

describe ThetvdbMapper::Mapping::Actor do
  let(:model) { ThetvdbMapper::Mapping::Actor.new({}) }

  describe '.map' do
    it 'should return specific keys' do
      model.map.keys.sort.should == [:id, :image_path, :name, :role, :sort_order].sort
    end

    it 'should map id' do
      model.stub(:data).and_return('id' => 1234)
      model.map[:id].should == 1234
    end

    it 'should map Image' do
      model.stub(:data).and_return('Image' => 'test')
      model.map[:image_path].should == 'test'
    end

    it 'should map Name' do
      model.stub(:data).and_return('Name' => 'test')
      model.map[:name].should == 'test'
    end

    it 'should map Role' do
      model.stub(:data).and_return('Role' => 'test')
      model.map[:role].should == 'test'
    end

    it 'should map SortOrder' do
      model.stub(:data).and_return('SortOrder' => 1)
      model.map[:sort_order].should == 1
    end
  end
end
