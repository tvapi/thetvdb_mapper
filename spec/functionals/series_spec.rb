require 'spec_helper'

describe ThetvdbMapper::Series do
  let(:model) { ThetvdbMapper::Series.new(input_data) }
  let(:input_data) do
    {
      'id' => '123',
      'Airs_DayOfWeek' => 'Monday',
      'Airs_Time' => '8 AM',
      'ContentRating' => 'PG',
      'FirstAired' => '2000-01-01',
      'Genre' => 'sci-fi',
      'IMDB_ID' => 'tt000000',
      'Language' => 'en',
      'Network' => 'SyFy',
      'NetworkID' => '1',
      'Overview' => 'overview',
      'Rating' => '1.1',
      'RatingCount' => '123',
      'Runtime' => '60',
      'SeriesName' => 'Test',
      'Status' => 'continue',
      'added' => '2000-01-01 01:00:00',
      'addedBy' => 'test',
      'banner' => 'banner_path',
      'fanart' => 'fanart_path',
      'lastupdated' => 1,
      'poster' => 'poster_path',
      'zap2it_id' => 'zap123'
    }
  end

  let(:output_data) do
    {
      id: 123,
      airs_day_of_week: 'Monday',
      airs_time: '8 AM',
      content_rating: 'PG',
      first_aired: Date.parse('2000-01-01'),
      genres: ['sci-fi'],
      imdb_id: 'tt000000',
      language: 'en',
      network: 'SyFy',
      network_id: 1,
      overview: 'overview',
      rating: 1.1,
      rating_count: 123,
      runtime: 60,
      name: 'Test',
      status: 'continue',
      added_at: DateTime.parse('2000-01-01 01:00:00'),
      added_by: 'test',
      banner_path: 'banner_path',
      fanart_path: 'fanart_path',
      last_updated_at: Time.at(1),
      poster_path: 'poster_path',
      zap2it_id: 'zap123'
    }
  end

  describe '#map' do
    it 'should return specific keys' do
      model.keys.sort.should == [:id, :airs_day_of_week, :airs_time, :content_rating, :first_aired, :genres,
        :imdb_id, :language, :network, :network_id, :overview, :rating, :rating_count, :runtime, :name, :status,
        :added_at, :added_by, :banner_path, :fanart_path, :last_updated_at, :poster_path, :zap2it_id].sort
    end

    it 'should return corrected Hash after mapping' do
      model.to_hash.should == output_data
    end
  end
end
