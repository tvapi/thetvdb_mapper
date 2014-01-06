class ThetvdbMapper::Banners < ThetvdbMapper::Base
  def data
    @data ||= fetcher.banners(id).body.map { |banner| map(banner) }
  end

  def map(data)
    ThetvdbMapper::Mapping::Banner.map(data)
  end

  def inspect
    "<ThetvdbMapper::Banners data=#{data.to_s} >"
  end
end
