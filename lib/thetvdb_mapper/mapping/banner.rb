class ThetvdbMapper::Mapping::Banner < ThetvdbMapper::Mapping::Base
  def self.rules
    {
      'id' => :id,
      'BannerPath' => :path,
      'ThumbnailPath' => :thumbnail_path,
      'VignettePath' => :vignette_path,
      'BannerType' => :type,
      'BannerType2' => :type2,
      'Language' => :language,
      'Season' => :season,
      'Rating' => :rating,
      'RatingCount' => :rating_count,
      'SeriesName' => :series_name,
      'Colors' => :colors,
    }
  end
end
