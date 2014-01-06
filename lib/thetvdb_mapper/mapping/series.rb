class ThetvdbMapper::Mapping::Series < ThetvdbMapper::Mapping::Base
  def self.rules
    {
      'id' => :id,
      'Airs_DayOfWeek' => :airs_day_of_week,
      'Airs_Time' => :airs_time,
      'ContentRating' => :content_rating,
      'FirstAired' => :first_aired,
      'genre' => :genres,
      'IMDB_ID' => :imdb_id,
      'Language' => :language,
      'Network' => :network,
      'NetworkID' => :network_id,
      'Overview' => :overview,
      'Rating' => :rating,
      'RatingCount' => :rating_count,
      'Runtime' => :runtime,
      'SeriesName' => :name,
      'Status' => :status,
      'added' => :added_at,
      'added_by' => :added_by,
      'banner' => :banner_path,
      'fanart' => :fanart_path,
      'lastupdated' => :last_updated_at,
      'poster' => :poster_path,
      'zap2it_id' => :zap2it_id
    }
  end

  def self.convert(data)
    data.merge({
      genres: convert_to_list(data[:genres]),
      last_updated_at: Time.at(data[:last_updated_at].to_i)
    })
  end
end
