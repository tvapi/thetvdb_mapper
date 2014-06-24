class ThetvdbMapper::Series < Hashie::Trash
  property :id,               from: 'id',            with: -> (value) { value.to_i }
  property :airs_day_of_week, from: 'Airs_DayOfWeek'
  property :airs_time,        from: 'Airs_Time'
  property :content_rating,   from: 'ContentRating'
  property :first_aired,      from: 'FirstAired',    with: -> (value) { Date.parse(value) }
  property :imdb_id,          from: 'IMDB_ID'
  property :language,         from: 'Language'
  property :network,          from: 'Network'
  property :network_id,       from: 'NetworkID',     with: -> (value) { value.to_i }
  property :overview,         from: 'Overview'
  property :rating,           from: 'Rating',        with: -> (value) { value.to_f }
  property :rating_count,     from: 'RatingCount',   with: -> (value) { value.to_i }
  property :runtime,          from: 'Runtime',       with: -> (value) { value.to_i }
  property :name,             from: 'SeriesName'
  property :series_id,        from: 'SeriesId',      with: -> (value) { value.to_i }
  property :status,           from: 'Status'
  property :added_at,         from: 'added',         with: -> (value) { DateTime.parse(value) }
  property :added_by,         from: 'addedBy'
  property :banner_path,      from: 'banner'
  property :fanart_path,      from: 'fanart'
  property :last_updated_at,  from: 'lastupdated',   with: -> (value) { Time.at(value.to_i) }
  property :poster_path,      from: 'poster'
  property :zap2it_id,        from: 'zap2it_id'

  property :genres, from: 'Genre', with: -> (value) { value.to_s.split('|').reject{ |element| element.empty? } }
end
