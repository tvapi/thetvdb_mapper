class ThetvdbMapper::Mapping::Base
  def self.map(data)
    rules.each do |before, after|
      data[after] = data.delete(before)
    end

    if respond_to?(:convert)
      data = convert(data)
    end

    data.reject{ |key, _| key.is_a?(String) }
  end

  def self.convert_to_list(data)
    ThetvdbMapper::Mapping::StringList.map(data)
  end
end
