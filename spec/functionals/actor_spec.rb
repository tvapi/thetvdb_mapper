require 'spec_helper'

describe ThetvdbMapper::Actor do
  let(:model) { ThetvdbMapper::Actor.new(input_data) }
  let(:input_data) do
    {
      'id' => '123',
      'Image' => '/image_path',
      'Name' => 'name',
      'Role' => 'role',
      'SortOrder' => '1'
    }
  end

  let(:output_data) do
    {
      id: 123,
      image_path: '/image_path',
      name: 'name',
      role: 'role',
      sort_order: 1
    }
  end

  describe '.map' do
    it 'should return specific keys' do
      model.keys.sort.should == [:id, :image_path, :name, :role, :sort_order].sort
    end

    it 'should return corrected Hash after mapping' do
      model.to_hash.should == output_data
    end
  end
end
