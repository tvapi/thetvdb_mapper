class ThetvdbMapper::Fetcher
  def initialize(series_id, options = {})
    @series_id = series_id
  end

  def series
    @series ||= client.series.find(@series_id, mapping: true)
  end

  def full_series
    @full_series ||= client.series.find_full(@series_id, mapping: true)
  end

  def actors
    @actors ||= client.actor.all(@series_id, mapping: true)
  end

  def banners
    @banners ||= client.banner.all(@series_id, mapping: true)
  end

  def episode(season, episode)
    @episode ||= {}
    @episode["#{season}x#{episode}"] ||= client.episode.find_by_default_order(@series_id, season, episode, mapping: true)
  end

  def client
    ThetvdbApi::Client.new
  end
end
