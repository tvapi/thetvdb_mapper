class ThetvdbMapper::Episode < Hashie::Trash
  property :id, from: 'id', with: -> (value) { value.to_i }
  property :combined_episode_number, from: 'Combined_episodenumber', with: -> (value) { value.to_f }
  property :combined_season, from: 'Combined_season',                with: -> (value) { value.to_f }
  property :dvd_chapter, from: 'DVD_chapter'
  property :dvd_disc_id, from: 'DVD_discid'
  property :dvd_episode_number, from: 'DVD_episodenumber',           with: -> (value) { value.to_f }
  property :dvd_season, from: 'DVD_season',                          with: -> (value) { value.to_i }
  property :ep_img_flag, from: 'EpImgFlag',                          with: -> (value) { value.to_i }
  property :name, from: 'EpisodeName'
  property :number, from: 'EpisodeNumber',                           with: -> (value) { value.to_i }
  property :first_aired, from: 'FirstAired',                         with: -> (value) { Date.parse(value) }
  property :imdb_id, from: 'IMDB_ID'
  property :language, from: 'Language'
  property :overview, from: 'Overview'
  property :production_code, from: 'ProductionCode'
  property :rating, from: 'Rating',                                  with: -> (value) { value.to_f }
  property :rating_count, from: 'RatingCount',                       with: -> (value) { value.to_i }
  property :season, from: 'SeasonNumber',                            with: -> (value) { value.to_i }
  property :absolute_number, from: 'absolute_number',                with: -> (value) { value.to_i }
  property :airs_after_season, from: 'airsafter_season',             with: -> (value) { value.to_i }
  property :airs_before_episode, from: 'airsbefore_episode',         with: -> (value) { value.to_i }
  property :airs_before_season, from: 'airsbefore_season',           with: -> (value) { value.to_i }
  property :filename_path, from: 'filename'
  property :last_updated_at, from: 'lastupdated',                    with: -> (value) { Time.at(value.to_i) }
  property :season_id, from: 'seasonid'
  property :series_id, from: 'seriesid'
  property :thumbnail_added_at, from: 'thumb_added',                 with: -> (value) { DateTime.parse(value) }
  property :thumbnail_height, from: 'thumb_height',                  with: -> (value) { value.to_i }
  property :thumbnail_width, from: 'thumb_width',                    with: -> (value) { value.to_i }

  property :directors,   from: 'Director',   with: -> (value) { value.to_s.split('|').reject{ |element| element.empty? } }
  property :guest_stars, from: 'GuestStars', with: -> (value) { value.to_s.split('|').reject{ |element| element.empty? } }
  property :writers,     from: 'Writer',     with: -> (value) { value.to_s.split('|').reject{ |element| element.empty? } }
end
