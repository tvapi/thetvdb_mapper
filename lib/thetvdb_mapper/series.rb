class ThetvdbMapper::Series < ThetvdbMapper::Base
  def data
    @data ||= mapping_object(fetcher.series(id).body).map
  end

  def mapping_object(data)
    ThetvdbMapper::Mapping::Series.new(data)
  end

  def inspect
    "<ThetvdbMapper::Series data=#{data.to_s} >"
  end
end
