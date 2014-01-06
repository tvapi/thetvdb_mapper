class ThetvdbMapper::Mapping::Base
  def self.map(data)
    rules.each do |before, after|
      data[after] = data.delete(before)
    end

    if respond_to?(:convert)
      data = convert(data)
    end

    data
  end
end
