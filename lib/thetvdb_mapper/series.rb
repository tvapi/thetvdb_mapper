class ThetvdbMapper::Series < ROM::Mapper
  attribute "id", type: :integer
  attribute "airs_day_of_week", from: "Airs_DayOfWeek"
  attribute "airs_time", from: "Airs_Time"
  attribute "content_rating", from: "ContentRating"
  attribute "imdb_id", from: "IMDB_ID"
  attribute "language", from: "Language"
  attribute "network", from: "Network"
  attribute "network_id", from: "NetworkID", type: :integer
  attribute "overview", from: "Overview"
  attribute "rating", from: "Rating", type: :float
  attribute "rating_count", from: "RatingCount", type: :integer
  attribute "runtime", from: "Runtime", type: :integer
  attribute "name", from: "SeriesName"
  attribute "series_id", from: "SeriesID", type: :integer
  attribute "status", from: "Status"
  attribute "added_by", from: "addedBy"
  attribute "banner_path", from: "banner"
  attribute "fanart_path", from: "fanart"
  attribute "poster_path", from: "poster"
  attribute "zap2it_id"

  attribute "added_at", from: "added" do |attr|
    attr ? DateTime.parse(attr) : nil
  end

  attribute "first_aired", from: "FirstAired" do |attr|
    attr ? Date.parse(attr) : nil
  end

  attribute "last_updated_at", from: "lastupdated" do |attr|
    attr ? Time.at(attr.to_i) : nil
  end

  attribute "actors", from: "Actors" do |attr|
    attr.to_s.split("|").reject{ |element| element.empty? }
  end

  attribute "genres", from: "Genre" do |attr|
    attr.to_s.split("|").reject{ |element| element.empty? }
  end
end
