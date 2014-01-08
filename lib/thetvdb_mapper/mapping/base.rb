class ThetvdbMapper::Mapping::Base
  attr_reader :data

  def initialize(data)
    @data = data
  end

  def map
    rules.each do |before, after|
      data[after] = data.delete(before)
    end

    convert.reject{ |key, _| key.is_a?(String) }
  end

  def convert
    data
  end

  def convert_to_list(data)
    list_mapping_object(data).map
  end

  def list_mapping_object(data)
    ThetvdbMapper::Mapping::StringList.new(data)
  end
end
