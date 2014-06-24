class ThetvdbMapper::Episode < ThetvdbMapper::Base
  property :id,                      from: 'id',                     with: lambda { |value| value.to_i }
  property :combined_episode_number, from: 'Combined_episodenumber', with: lambda { |value| value.to_f }
  property :combined_season,         from: 'Combined_season',        with: lambda { |value| value.to_f }
  property :dvd_chapter,             from: 'DVD_chapter'
  property :dvd_disc_id,             from: 'DVD_discid'
  property :dvd_episode_number,      from: 'DVD_episodenumber',      with: lambda { |value| value.to_f }
  property :dvd_season,              from: 'DVD_season',             with: lambda { |value| value.to_i }
  property :directors,               from: 'Director',               with: lambda { |value| to_array(value) }
  property :ep_img_flag,             from: 'EpImgFlag',              with: lambda { |value| value.to_i }
  property :name,                    from: 'EpisodeName'
  property :number,                  from: 'EpisodeNumber',          with: lambda { |value| value.to_i }
  property :first_aired,             from: 'FirstAired',             with: lambda { |value| Date.parse(value) }
  property :guest_stars,             from: 'GuestStars',             with: lambda { |value| to_array(value) }
  property :imdb_id,                 from: 'IMDB_ID'
  property :language,                from: 'Language'
  property :overview,                from: 'Overview'
  property :production_code,         from: 'ProductionCode'
  property :rating,                  from: 'Rating',                 with: lambda { |value| value.to_f }
  property :rating_count,            from: 'RatingCount',            with: lambda { |value| value.to_i }
  property :season,                  from: 'SeasonNumber',           with: lambda { |value| value.to_i }
  property :writers,                 from: 'Writer',                 with: lambda { |value| to_array(value) }
  property :absolute_number,         from: 'absolute_number',        with: lambda { |value| value.to_i }
  property :airs_after_season,       from: 'airsafter_season',       with: lambda { |value| value.to_i }
  property :airs_before_episode,     from: 'airsbefore_episode',     with: lambda { |value| value.to_i }
  property :airs_before_season,      from: 'airsbefore_season',      with: lambda { |value| value.to_i }
  property :filename_path,           from: 'filename'
  property :last_updated_at,         from: 'lastupdated',            with: lambda { |value| Time.at(value.to_i) }
  property :season_id,               from: 'seasonid'
  property :series_id,               from: 'seriesid'
  property :thumbnail_added_at,      from: 'thumb_added',            with: lambda { |value| DateTime.parse(value) }
  property :thumbnail_height,        from: 'thumb_height',           with: lambda { |value| value.to_i }
  property :thumbnail_width,         from: 'thumb_width',            with: lambda { |value| value.to_i }

end
