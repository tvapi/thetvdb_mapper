class ThetvdbMapper::Series < ThetvdbMapper::Base
  def data
    @data ||= ThetvdbMapper::Mapping::Series.map(fetcher.series(id).body)
  end

  def inspect
    "<ThetvdbMapper::Series data=#{data.to_s} >"
  end
end
