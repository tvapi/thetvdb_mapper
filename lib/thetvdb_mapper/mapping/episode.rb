class ThetvdbMapper::Mapping::Episode
  def self.map(data)
    {
      id: data['id'],
      combined_episode_number: data['Combined_episodenumber'],
      combined_season: data['Combined_season'],
      dvd_episode_number: data['DVD_episodenumber'],
      dvd_season: data['DVD_season'],
      director: ThetvdbMapper::Mapping::StringList.map(data['Director']),
      ep_img_flag: data['EpImgFlag'],
      name: data['EpisodeName'],
      number: data['EpisodeNumber'],
      first_aired: data['FirstAired'],
      guest_stars: ThetvdbMapper::Mapping::StringList.map(data['GuestStars']),
      imdb_id: data['IMDB_ID'],
      language: data['Language'],
      overview: data['Overview'],
      production_code: data['ProductionCode'],
      rating: data['Rating'],
      rating_count: data['RatingCount'],
      season: data['SeasonNumber'],
      writer: ThetvdbMapper::Mapping::StringList.map(data['Writer']),
      absolute_number: data['absolute_number'],
      airs_after_season: data['airsafter_season'],
      airs_before_episode: data['airsbefore_episode'],
      airs_before_season: data['airsbefore_season'],
      filename_path: data['filename'],
      last_updated_at: Time.at(data['lastupdated'].to_i),
      season_id: data['season_id'],
      series_id: data['series_id'],
      thumbnail_added_at: data['thumb_added'],
      thumbnail_height: data['thumb_height'],
      thumbnail_width: data['thumb_weight']
    }
  end
end
