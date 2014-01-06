class ThetvdbMapper::FullSeries < ThetvdbMapper::Base
  def data
    @data ||= series.merge(episodes: episodes, actors: actors, banners: banners)
  end

  def series
    ThetvdbMapper::Mapping::Series.map(fetcher.full_series(id).body['Series'])
  end

  def episodes
    fetcher.full_series(id).body['Episode'].map { |episode| map_episode(episode) }
  end

  def map_episode(data)
    ThetvdbMapper::Mapping::Episode.map(data)
  end

  def actors
    fetcher.actors(id).body.map { |actor| map_actor(actor) }
  end

  def map_actor(data)
    ThetvdbMapper::Mapping::Actor.map(data)
  end

  def banners
    fetcher.banners(id).body.map { |banner| map_banner(banner) }
  end

  def map_banner(data)
    ThetvdbMapper::Mapping::Banner.map(data)
  end

  def inspect
    "<ThetvdbMapper::FullSeries data=#{data.to_s} >"
  end
end
