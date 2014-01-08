class ThetvdbMapper::Mapping::Episode < ThetvdbMapper::Mapping::Base
  def rules
    {
      'id' => :id,
      'Combined_episodenumber' => :combined_episode_number,
      'Combined_season' => :combined_season,
      'DVD_episodenumber' => :dvd_episode_number,
      'DVD_season' => :dvd_season,
      'Director' => :director,
      'EpImgFlag' => :ep_img_flag,
      'EpisodeName' => :name,
      'EpisodeNumber' => :number,
      'FirstAired' => :first_aired,
      'GuestStars' => :guest_stars,
      'IMDB_ID' => :imdb_id,
      'Language' => :language,
      'Overview' => :overview,
      'ProductionCode' => :production_code,
      'Rating' => :rating,
      'RatingCount' => :rating_count,
      'SeasonNumber' => :season,
      'Writer' => :writer,
      'absolute_number' => :absolute_number,
      'airsafter_season' => :airs_after_season,
      'airsbefore_episode' => :airs_before_episode,
      'airsbefore_season' => :airs_before_season,
      'filename' => :filename_path,
      'lastupdated' => :last_updated_at,
      'seasonid' => :season_id,
      'seriesid' => :series_id,
      'thumb_added' => :thumbnail_added_at,
      'thumb_height' => :thumbnail_height,
      'thumb_width' => :thumbnail_width
    }
  end

  def convert
    data.merge({
      director: convert_to_list(data[:director]),
      guest_stars: convert_to_list(data[:guest_stars]),
      writer: convert_to_list(data[:writer]),
      last_updated_at: Time.at(data[:last_updated_at].to_i)
    })
  end
end
