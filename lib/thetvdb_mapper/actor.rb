class ThetvdbMapper::Actor < Hashie::Trash
  property :id,         from: 'id',        with: -> (value) { value.to_i }
  property :image_path, from: 'Image'
  property :name,       from: 'Name'
  property :role,       from: 'Role'
  property :sort_order, from: 'SortOrder', with: -> (value) { value.to_i }
end
