class ThetvdbMapper::FullSeries < ThetvdbMapper::Base
  def data
    @data ||= series.merge(episodes: episodes, actors: actors, banners: banners)
  end

  def series
    mapping_series_object(fetcher.full_series(id).body['Series']).map
  end

  def episodes
    fetcher.full_series(id).body['Episode'].map { |episode| map_episode(episode) }
  end

  def map_episode(data)
    mapping_episode_object(data).map
  end

  def actors
    fetcher.actors(id).body.map { |actor| map_actor(actor) }
  end

  def map_actor(data)
    mapping_actor_object(data).map
  end

  def banners
    fetcher.banners(id).body.map { |banner| map_banner(banner) }
  end

  def map_banner(data)
    mapping_banner_object(data).map
  end

  def mapping_series_object(data)
    ThetvdbMapper::Mapping::Series.new(data)
  end

  def mapping_episode_object(data)
    ThetvdbMapper::Mapping::Episode.new(data)
  end

  def mapping_actor_object(data)
    ThetvdbMapper::Mapping::Actor.new(data)
  end

  def mapping_banner_object(data)
    ThetvdbMapper::Mapping::Banner.new(data)
  end

  def inspect
    "<ThetvdbMapper::FullSeries data=#{data.to_s} >"
  end
end
