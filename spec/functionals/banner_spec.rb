require "spec_helper"

describe ThetvdbMapper::Banner do
  let(:model) { ThetvdbMapper::Banner.build }
  let(:input_data) { MultiXml.parse(File.read("spec/fixtures/banners.xml")) }

  let(:output_data) do
    {
      "id" => 899538,
      "language" => "en",
      "path" => "fanart/original/80348-55.jpg",
      "rating" => 8.5,
      "rating_count" => 2,
      "season" => 0,
      "series_name" => true,
      "thumbnail_path" => "_cache/fanart/original/80348-55.jpg",
      "type" => "fanart",
      "type2" => "1280x720",
      "vignette_path" => "fanart/vignette/80348-55.jpg",
      "colors" => "|172,157,124|184,131,113|53,53,51|"
    }
  end

  describe "#call" do
    let(:result) { model.call(input_data["Banners"]["Banner"]) }

    it "returns specific keys" do
      expect(result[0].keys).
        to match_array(
             %w(id path type type2 colors language rating rating_count series_name thumbnail_path vignette_path season)
           )
    end

    it "returns corrected Hash after mapping" do
      expect(result[0]).to eq(output_data)
    end
  end
end
