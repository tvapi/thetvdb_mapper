class ThetvdbMapper::Mapping::Actor
  def self.map(data)
    rules.each do |before, after|
      data[after] = data.delete(before)
    end

    data
  end

  def self.rules
    {
      'id' => :id,
      'Image' => :image_path,
      'Name' => :name,
      'Role' => :role,
      'SortOrder' => :sort_order
    }
  end
end
