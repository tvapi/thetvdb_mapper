require 'spec_helper'

describe ThetvdbMapper::Mapping::Actor do
  let(:model) { ThetvdbMapper::Mapping::Actor.new({}) }

  describe '#rules' do
    it 'should map id' do
      model.rules['id'].should == :id
    end

    it 'should map Image' do
      model.rules['Image'].should == :image_path
    end

    it 'should map Name' do
      model.rules['Name'].should == :name
    end

    it 'should map Role' do
      model.rules['Role'].should == :role
    end

    it 'should map SortOrder' do
      model.rules['SortOrder'].should == :sort_order
    end
  end
end
