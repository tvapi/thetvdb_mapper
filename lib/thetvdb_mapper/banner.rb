class ThetvdbMapper::Banner < ThetvdbMapper::Base
  property :id,             from: 'id',           with: lambda { |value| value.to_i }
  property :path,           from: 'BannerPath'
  property :thumbnail_path, from: 'ThumbnailPath'
  property :vignette_path,  from: 'VignettePath'
  property :kind,           from: 'BannerType'
  property :kind2,          from: 'BannerType2'
  property :language,       from: 'Language'
  property :season,         from: 'Season',       with: lambda { |value| value.to_i }
  property :rating,         from: 'Rating',       with: lambda { |value| value.to_f }
  property :rating_count,   from: 'RatingCount',  with: lambda { |value| value.to_i }
  property :series_name,    from: 'SeriesName'
  property :colors,         from: 'Colors'
end
