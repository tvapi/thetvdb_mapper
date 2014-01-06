require 'spec_helper'

describe ThetvdbMapper::Mapping::Actor do
  let(:klass) { ThetvdbMapper::Mapping::Actor }

  describe '#rules' do
    it 'should map id' do
      klass.rules['id'].should == :id
    end

    it 'should map Image' do
      klass.rules['Image'].should == :image_path
    end

    it 'should map Name' do
      klass.rules['Name'].should == :name
    end

    it 'should map Role' do
      klass.rules['Role'].should == :role
    end

    it 'should map SortOrder' do
      klass.rules['SortOrder'].should == :sort_order
    end
  end
end
