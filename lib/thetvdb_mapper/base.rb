class ThetvdbMapper::Base < Hashie::Trash
  def self.to_array(string)
    string.to_s.split('|').reject{ |element| element.empty? }
  end
end
