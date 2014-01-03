class ThetvdbMapper::Mapping::Actor
  def self.map(data)
    {
      id: data['id'],
      image_path: data['Image'],
      name: data['Name'],
      role: data['Role'],
      sort_order: data['SortOrder']
    }
  end
end
