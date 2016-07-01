require "spec_helper"

describe ThetvdbMapper::Actor do
  let(:model) { ThetvdbMapper::Actor.build }
  let(:input_data) { MultiXml.parse(File.read("spec/fixtures/actors.xml")) }

  let(:output_data) do
    [
      {
        "id" => 22017,
        "image_path" => "actors/22017.jpg",
        "name" => "Zachary Levi",
        "role" => "Charles \"Chuck\" Bartowski",
        "sort_order" => 0
      }, {
        "id" => 22019,
        "image_path" => "actors/22019.jpg",
        "name" => "Yvonne Strahovski",
        "role" => "Sarah Walker",
        "sort_order" => 1
      }
    ]
  end

  describe "#call" do
    let(:result) { model.call(input_data["Actors"]["Actor"]) }

    it "returns specific keys" do
      expect(result[0].keys).to match_array(%w(id image_path name role sort_order))
    end

    it "returns corrected Hash after mapping" do
      expect(result).to eq(output_data)
    end
  end
end
