class ThetvdbMapper::Fetcher
  def series(id)
    @series ||= client.series.find(id, mapping: true)
  end

  def full_series(id)
    @full_series ||= client.series.find_full(id, mapping: true)
  end

  def actors(id)
    @actors ||= client.actor.find(id, mapping: true)
  end

  def banners(id)
    @banners ||= client.banner.find(id, mapping: true)
  end

  def episode(id)
    @episode ||= client.episode.find(id, mapping: true)
  end

  def client
    ThetvdbApi::Client.new
  end
end
