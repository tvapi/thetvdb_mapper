class ThetvdbMapper::Mapping::Banner
  def self.map(data)
    {
      path: data['BannerPath'],
      thumbnail_path: data['ThumbnailPath'],
      vignette_path: data['VignettePath'],
      type: data['BannerType'],
      type2: data['BannerType2'],
      language: data['Language'],
      season: data['Season'],
      rating: data['Rating'],
      rating_count: data['RatingCount'],
      series_name: data['SeriesName'],
      colors: data['Colors']
    }
  end
end
