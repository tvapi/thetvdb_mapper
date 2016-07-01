require "spec_helper"

describe ThetvdbMapper::Series do
  let(:model) { ThetvdbMapper::Series.build }
  let(:input_data) { MultiXml.parse(File.read("spec/fixtures/series.xml")) }

  let(:output_data) do
    {
      "id" => 80348,
      "actors" => ["Zachary Levi", "Yvonne Strahovski", "Joshua Gomez", "Adam Baldwin", "Bonita Friedericy",
                   "Julia Ling", "Vik Sahay", "Ryan McPartlin", "Scott Krinsky", "Mark Christopher Lawrence",
                   "Sarah Lancaster", "Mekenna Melvin", "Linda Hamilton", "Brandon Routh", "Matthew Bomer"],
      "airs_day_of_week" => "Friday",
      "airs_time" => "8:00 PM",
      "content_rating" => "TV-PG",
      "first_aired" => Date.parse("2007-09-24"),
      "genres" => ["Action", "Adventure", "Comedy", "Drama"],
      "imdb_id" => "tt0934814",
      "language" => "en",
      "network" => "NBC",
      "network_id" => 0,
      "overview" => "Chuck Bartowski, ace computer geek at Buy More, is not in his right mind. That's a good thing. "\
                    "Ever since he unwittingly downloaded stolen government secrets into his brain, action, "\
                    "excitement and a cool secret-agent girlfriend have entered his life. It's a bad thing, too. "\
                    "Because now Chuck is in danger 24/7.",
      "rating" => 8.7,
      "rating_count" => 855,
      "runtime" => 60,
      "name" => "Chuck",
      "series_id" => 68724,
      "status" => "Ended",
      "added_at" => nil,
      "added_by" => nil,
      "banner_path" => "graphical/80348-g26.jpg",
      "fanart_path" => "fanart/original/80348-32.jpg",
      "poster_path" => "posters/80348-16.jpg",
      "last_updated_at" => Time.at(1388829637),
      "zap2it_id" => "EP00930779"
    }
  end

  describe "#call" do
    let(:result) { model.call([input_data["Data"]["Series"]]) }

    it "returns specific keys" do
      expect(result[0].keys).
        to match_array(
             %w(actors added_at added_by airs_day_of_week airs_time banner_path content_rating fanart_path first_aired
                genres id imdb_id language last_updated_at name network network_id overview poster_path rating
                rating_count runtime series_id status zap2it_id)
           )
    end

    it "returns corrected Hash after mapping" do
      expect(result[0]).to eq(output_data)
    end
  end
end
