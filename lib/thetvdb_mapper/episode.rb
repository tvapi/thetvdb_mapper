# class ThetvdbMapper::Episode < ThetvdbMapper::Base
#   property :thumbnail_added_at,      from: 'thumb_added',            with: lambda { |value| DateTime.parse(value) }
#   property :thumbnail_height,        from: 'thumb_height',           with: lambda { |value| value.to_i }
#   property :thumbnail_width,         from: 'thumb_width',            with: lambda { |value| value.to_i }
# end

class ThetvdbMapper::Episode < ROM::Mapper
  attribute "id", type: :integer
  attribute "combined_episode_number", from: "Combined_episodenumber", type: :float
  attribute "combined_season", from: "Combined_season", type: :float
  attribute "dvd_chapter", from: "DVD_chapter"
  attribute "dvd_disc_id", from: "DVD_discid"
  attribute "dvd_episode_number", from: "DVD_episodenumber", type: :float
  attribute "dvd_season", from: "DVD_season", type: :integer
  attribute "ep_img_flag", from: "EpImgFlag", type: :integer
  attribute "name", from: "EpisodeName"
  attribute "number", from: "EpisodeNumber", type: :integer
  attribute "imdb_id", from: "IMDB_ID"
  attribute "language", from: "Language"
  attribute "overview", from: "Overview"
  attribute "production_code", from: "ProductionCode"
  attribute "rating", from: "Rating", type: :float
  attribute "rating_count", from: "RatingCount", type: :integer
  attribute "season_number", from: "SeasonNumber", type: :integer
  attribute "absolute_number", from: "absolute_number", type: :integer
  attribute "airs_after_season", from: "airsafter_season", type: :integer
  attribute "airs_before_episode", from: "airsbefore_episode", type: :integer
  attribute "airs_before_season", from: "airsbefore_season", type: :integer
  attribute "filename_path", from: "filename"
  attribute "season_id", from: "seasonid", type: :integer
  attribute "series_id", from: "seriesid", type: :integer
  attribute "flagged", from: "flagged", type: :integer
  attribute "mirror_updated_at", from: "mirrorupdate", type: :time
  attribute "tms_export", type: :integer
  attribute "thumbnail_height", from: "thumb_height", type: :integer
  attribute "thumbnail_width", from: "thumb_width", type: :integer

  attribute "thumbnail_added_at", from: "thumb_added" do |attr|
    attr ? DateTime.parse(attr) : nil
  end

  attribute "first_aired", from: "FirstAired" do |attr|
    attr ? Date.parse(attr) : nil
  end

  attribute "last_updated_at", from: "lastupdated" do |attr|
    attr ? Time.at(attr.to_i) : nil
  end

  attribute "directors", from: "Director" do |attr|
    attr.to_s.split("|").reject{ |element| element.empty? }
  end

  attribute "guest_stars", from: "GuestStars" do |attr|
    attr.to_s.split("|").reject{ |element| element.empty? }
  end

  attribute "writers", from: "Writer" do |attr|
    attr.to_s.split("|").reject{ |element| element.empty? }
  end
end
