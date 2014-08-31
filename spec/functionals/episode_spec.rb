require 'spec_helper'

describe ThetvdbMapper::Episode do
  let(:model) { ThetvdbMapper::Episode.new(input_data) }
  let(:input_data) do
    {
      'id' => '123',
      'Combined_episodenumber' => 1,
      'Combined_season' => 2,
      'DVD_episodenumber' => 3,
      'DVD_season' => 4,
      'Director' => 'McG',
      'EpImgFlag' => 1,
      'EpisodeName' => 'Test',
      'EpisodeNumber' => 5,
      'FirstAired' => '2000-01-01',
      'GuestStars' => 'Mieko Hillman|Kristine Blackport',
      'IMDB_ID' => 'tt000000',
      'Language' => 'en',
      'Overview' => 'overview',
      'ProductionCode' => '1234',
      'Rating' => '1.1',
      'RatingCount' => '12',
      'SeasonNumber' => '1',
      'Writer' => 'McG',
      'absolute_number' => '1',
      'airsafter_season' => '1',
      'airsbefore_episode' => '1',
      'airsbefore_season' => '1',
      'filename' => '/path',
      'lastupdated' => 1,
      'seasonid' => '1',
      'seriesid' => '1',
      'thumb_added' => '2000-01-01 01:00:00',
      'thumb_height' => '100',
      'thumb_width' => '100'
    }
  end

  let(:output_data) do
    {
      id: 123,
      combined_episode_number: 1.0,
      combined_season: 2.0,
      dvd_episode_number: 3.0,
      dvd_season: 4,
      directors: ['McG'],
      ep_img_flag: 1,
      name: 'Test',
      number: 5,
      first_aired: Date.parse('2000-01-01'),
      guest_stars: ['Mieko Hillman', 'Kristine Blackport'],
      imdb_id: 'tt000000',
      language: 'en',
      overview: 'overview',
      production_code: '1234',
      rating: 1.1,
      rating_count: 12,
      season: 1,
      writers: ['McG'],
      absolute_number: 1,
      airs_after_season: 1,
      airs_before_episode: 1,
      airs_before_season: 1,
      filename_path: '/path',
      last_updated_at: Time.at(1),
      season_id: '1',
      series_id: '1',
      thumbnail_added_at: DateTime.parse('2000-01-01 01:00:00'),
      thumbnail_height: 100,
      thumbnail_width: 100
    }
  end

  describe '#map' do
    it 'should return specific keys' do
      expect(model.keys.sort).to eq([:id, :combined_episode_number, :combined_season, :dvd_episode_number,
        :dvd_season, :directors, :ep_img_flag, :name, :number, :first_aired, :guest_stars, :imdb_id, :language,
        :overview, :production_code, :rating, :rating_count, :season, :writers, :absolute_number, :airs_after_season,
        :airs_before_episode, :airs_before_season, :filename_path, :last_updated_at, :season_id, :series_id,
        :thumbnail_added_at, :thumbnail_height, :thumbnail_width].sort)
    end

    it 'should return corrected Hash after mapping' do
      expect(model.to_hash).to eq(output_data)
    end
  end
end
