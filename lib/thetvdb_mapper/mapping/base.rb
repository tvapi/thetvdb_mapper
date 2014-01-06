class ThetvdbMapper::Mapping::Base
  def self.map(data)
    rules.each do |before, after|
      data[after] = data.delete(before)
    end

    data
  end
end
