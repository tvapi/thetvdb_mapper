require 'spec_helper'

describe ThetvdbMapper::Banner do
  let(:model) { ThetvdbMapper::Banner.new(input_data) }
  let(:input_data) do
    {
      'id' => '123',
      'BannerPath' => '/image_path',
      'ThumbnailPath' => '/image2_path',
      'VignettePath' => '/image3_path',
      'BannerType' => 'kind',
      'BannerType2' => 'kind2',
      'Language' => 'en',
      'Season' => '1',
      'Rating' => '1.1',
      'RatingCount' => '123',
      'SeriesName' => 'Test',
      'Colors' => 'RGB',
    }
  end

  let(:output_data) do
    {
      id: '123',
      path: '/image_path',
      thumbnail_path: '/image2_path',
      vignette_path: '/image3_path',
      kind: 'kind',
      kind2: 'kind2',
      language: 'en',
      season: '1',
      rating: '1.1',
      rating_count: '123',
      series_name: 'Test',
      colors: 'RGB'
    }
  end

  describe '#map' do
    it 'should return specific keys' do
      model.map.keys.sort.should == [:path, :thumbnail_path, :vignette_path, :kind, :kind2, :language, :season,
        :rating, :rating_count, :series_name, :colors, :id].sort
    end

    it 'should return corrected Hash after mapping' do
      model.map.should == output_data
    end
  end
end
