class ThetvdbMapper::Episode < ThetvdbMapper::Base
  def data
    @data ||= mapping_object(fetcher.episode(id).body).map
  end

  def inspect
    "<ThetvdbMapper::Episode data=#{data.to_s} >"
  end

  def mapping_object(data)
    ThetvdbMapper::Mapping::Episode.new(data)
  end
end
