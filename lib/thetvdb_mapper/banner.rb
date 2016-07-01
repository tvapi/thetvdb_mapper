class ThetvdbMapper::Banner < ROM::Mapper
  attribute "id", type: :integer
  attribute "path", from: "BannerPath"
  attribute "thumbnail_path", from: "ThumbnailPath"
  attribute "vignette_path", from: "VignettePath"
  attribute "type", from: "BannerType"
  attribute "type2", from: "BannerType2"
  attribute "language", from: "Language"
  attribute "season", from: "Season", type: :integer
  attribute "rating", from: "Rating", type: :float
  attribute "rating_count", from: "RatingCount", type: :integer
  attribute "series_name", from: "SeriesName", type: :boolean
  attribute "colors", from: "Colors"
end
