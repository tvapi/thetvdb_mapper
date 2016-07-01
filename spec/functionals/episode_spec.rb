require "spec_helper"

describe ThetvdbMapper::Episode do
  let(:model) { ThetvdbMapper::Episode.build }
  let(:input_data) { MultiXml.parse(File.read("spec/fixtures/episode.xml")) }

  let(:output_data) do
    {
      "id" => 332179,
      "combined_episode_number" => 0.0,
      "combined_season" => 0.0,
      "dvd_chapter" => nil,
      "dvd_disc_id" => nil,
      "dvd_episode_number" => 1.0,
      "dvd_season" => 1,
      "directors" => ["McG"],
      "ep_img_flag" => 0,
      "name" => "Chuck Versus the Intersect",
      "number" => 1,
      "first_aired" => Date.parse("2007-09-24"),
      "guest_stars" => ["Mieko Hillman", "Kristine Blackport", "Jim Pirri", "Diana Gitelman", "Mel Fair",
                        "Lynn A. Henderson", "Odessa Rae", "Jordan Potter", "Tasha Campbell", "Dale Dye",
                        "Matthew Bomer", "Bruno Amato", "Nicolas Pajon", "Wendy Makkena"],
      "imdb_id" => "tt1035912",
      "language" => "en",
      "overview" => "Chuck Bartowski is an average computer geek until files of government secrets are downloaded "\
                    "into his brain. He is soon scouted by the CIA and NSA to act in place of their computer.",
      "production_code" => "276025",
      "rating" => 7.7,
      "rating_count" => 0,
      "season_number" => 1,
      "writers" => ["Josh Schwartz", "Chris Fedak"],
      "absolute_number" => 1,
      "airs_after_season" => 0,
      "airs_before_episode" => 0,
      "airs_before_season" => 0,
      "filename_path" => "episodes/80348/332179.jpg",
      "last_updated_at" => Time.at(1286047470),
      "season_id" => 27985,
      "series_id" => 80348,
      "flagged" => 0,
      "mirror_updated_at" => Time.parse("2013-10-08 13:25:36"),
      "tms_export" => 1,
      "thumbnail_added_at" => nil,
      "thumbnail_height" => 225,
      "thumbnail_width" => 400
    }
  end

  describe "#call" do
    let(:result) { model.call([input_data["Data"]["Episode"]]) }

    it "returns specific keys" do
      expect(result[0].keys).
        to match_array(
             %w(absolute_number airs_after_season airs_before_episode airs_before_season combined_episode_number
                combined_season directors dvd_chapter dvd_disc_id dvd_episode_number dvd_season ep_img_flag
                filename_path first_aired flagged guest_stars id imdb_id language last_updated_at mirror_updated_at
                name number overview production_code rating rating_count season_id season_number series_id
                thumbnail_added_at thumbnail_height thumbnail_width tms_export writers)
           )
    end

    it "returns corrected Hash after mapping" do
      expect(result[0]).to eq(output_data)
    end
  end
end
