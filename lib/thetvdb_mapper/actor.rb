class ThetvdbMapper::Actor < ThetvdbMapper::Base
  property :id,         from: 'id',        with: lambda { |value| value.to_i }
  property :image_path, from: 'Image'
  property :name,       from: 'Name'
  property :role,       from: 'Role'
  property :sort_order, from: 'SortOrder', with: lambda { |value| value.to_i }
end
