class ThetvdbMapper::Banners < ThetvdbMapper::Base
  def data
    @data ||= fetcher.banners(id).body.map { |banner| map(banner) }
  end

  def map(data)
    mapping_object(data).map
  end

  def inspect
    "<ThetvdbMapper::Banners data=#{data.to_s} >"
  end

  def mapping_object(data)
    ThetvdbMapper::Mapping::Banner.new(data)
  end
end
