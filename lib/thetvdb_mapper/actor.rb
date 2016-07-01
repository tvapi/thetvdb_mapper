class ThetvdbMapper::Actor < ROM::Mapper
  attribute "id", type: :integer
  attribute "image_path", from: "Image"
  attribute "name", from: "Name"
  attribute "role", from: "Role"
  attribute "sort_order", from: "SortOrder", type: :integer
end
