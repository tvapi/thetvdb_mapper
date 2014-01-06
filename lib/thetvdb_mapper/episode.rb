class ThetvdbMapper::Episode < ThetvdbMapper::Base
  def data
    @data ||= ThetvdbMapper::Mapping::Episode.map(fetcher.episode(id).body)
  end

  def inspect
    "<ThetvdbMapper::Episode data=#{data.to_s} >"
  end
end
