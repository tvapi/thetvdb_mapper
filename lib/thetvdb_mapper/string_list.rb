class ThetvdbMapper::StringList < ThetvdbMapper::Base
  def map
    data.to_s.split('|').reject{ |element| element.empty? }
  end
end
