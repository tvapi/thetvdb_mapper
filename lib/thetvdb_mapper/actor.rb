class ThetvdbMapper::Actor < ThetvdbMapper::Base
  def rules
    {
      'id' => :id,
      'Image' => :image_path,
      'Name' => :name,
      'Role' => :role,
      'SortOrder' => :sort_order
    }
  end
end
