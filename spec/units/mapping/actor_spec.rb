require 'spec_helper'

describe ThetvdbMapper::Mapping::Actor do
  let(:klass) { ThetvdbMapper::Mapping::Actor }

  describe '#map' do
    it 'should return specific keys' do
      klass.map({}).keys.sort.should == [:id, :image_path, :name, :role, :sort_order].sort
    end

    it 'should map id' do
      klass.map('id' => 1234)[:id].should == 1234
    end

    it 'should map Image' do
      klass.map('Image' => 'test')[:image_path].should == 'test'
    end

    it 'should map Name' do
      klass.map('Name' => 'test')[:name].should == 'test'
    end

    it 'should map Role' do
      klass.map('Role' => 'test')[:role].should == 'test'
    end

    it 'should map SortOrder' do
      klass.map('SortOrder' => 1)[:sort_order].should == 1
    end
  end
end
