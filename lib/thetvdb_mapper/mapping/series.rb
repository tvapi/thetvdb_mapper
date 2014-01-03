class ThetvdbMapper::Mapping::Series
  def self.map(data)
    {
      id: data['id'],
      airs_day_of_week: data['Airs_DayOfWeek'],
      airs_time: data['Airs_Time'],
      content_rating: data['ContentRating'],
      first_aired: data['FirstAired'],
      genres: ThetvdbMapper::Mapping::StringList.map(data['genre']),
      imdb_id: data['IMDB_ID'],
      language: data['Language'],
      network: data['Network'],
      network_id: data['NetworkID'],
      overview: data['Overview'],
      rating: data['Rating'],
      rating_count: data['RatingCount'],
      runtime: data['Runtime'],
      name: data['SeriesName'],
      status: data['Status'],
      added_at: data['added'],
      added_by: data['added_by'],
      banner_path: data['banner'],
      fanart_path: data['fanart'],
      last_updated_at: Time.at(data['lastupdated'].to_i),
      poster_path: data['poster'],
      zap2it_id: data['zap2it_id']
    }
  end
end
