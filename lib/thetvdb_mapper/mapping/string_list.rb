class ThetvdbMapper::Mapping::StringList < ThetvdbMapper::Mapping::Base
  def map
    data.to_s.split('|').reject{ |element| element.empty? }
  end
end
