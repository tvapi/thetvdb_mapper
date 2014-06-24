class ThetvdbMapper::Series < ThetvdbMapper::Base
  property :id,               from: 'id',            with: lambda { |value| value.to_i }
  property :actors,           from: 'Actors',        with: lambda { |value| to_array(value) }
  property :airs_day_of_week, from: 'Airs_DayOfWeek'
  property :airs_time,        from: 'Airs_Time'
  property :content_rating,   from: 'ContentRating'
  property :first_aired,      from: 'FirstAired',    with: lambda { |value| Date.parse(value) }
  property :genres,           from: 'Genre',         with: lambda { |value| to_array(value) }
  property :imdb_id,          from: 'IMDB_ID'
  property :language,         from: 'Language'
  property :network,          from: 'Network'
  property :network_id,       from: 'NetworkID',     with: lambda { |value| value.to_i }
  property :overview,         from: 'Overview'
  property :rating,           from: 'Rating',        with: lambda { |value| value.to_f }
  property :rating_count,     from: 'RatingCount',   with: lambda { |value| value.to_i }
  property :runtime,          from: 'Runtime',       with: lambda { |value| value.to_i }
  property :name,             from: 'SeriesName'
  property :series_id,        from: 'SeriesId',      with: lambda { |value| value.to_i }
  property :status,           from: 'Status'
  property :added_at,         from: 'added',         with: lambda { |value| DateTime.parse(value) }
  property :added_by,         from: 'addedBy'
  property :banner_path,      from: 'banner'
  property :fanart_path,      from: 'fanart'
  property :last_updated_at,  from: 'lastupdated',   with: lambda { |value| Time.at(value.to_i) }
  property :poster_path,      from: 'poster'
  property :zap2it_id,        from: 'zap2it_id'
end
