class ThetvdbMapper::Mapping::StringList
  def self.map(data)
    data.to_s.split('|').reject{ |element| element.empty? }
  end
end
