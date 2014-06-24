class ThetvdbMapper::Banner < ThetvdbMapper::Base
  def rules
    {
      'id' => :id,
      'BannerPath' => :path,
      'ThumbnailPath' => :thumbnail_path,
      'VignettePath' => :vignette_path,
      'BannerType' => :kind,
      'BannerType2' => :kind2,
      'Language' => :language,
      'Season' => :season,
      'Rating' => :rating,
      'RatingCount' => :rating_count,
      'SeriesName' => :series_name,
      'Colors' => :colors,
    }
  end
end
