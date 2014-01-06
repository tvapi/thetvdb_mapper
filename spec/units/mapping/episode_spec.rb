require 'spec_helper'

describe ThetvdbMapper::Mapping::Episode do
  let(:klass) { ThetvdbMapper::Mapping::Episode }

  describe '#map' do
    it 'should map id' do
      klass.rules['id'].should == :id
    end

    it 'should map Combined_episodenumber' do
      klass.rules['Combined_episodenumber'].should == :combined_episode_number
    end

    it 'should map Combined_season' do
      klass.rules['Combined_season'].should == :combined_season
    end

    it 'should map DVD_episodenumber' do
      klass.rules['DVD_episodenumber'].should == :dvd_episode_number
    end

    it 'should map DVD_season' do
      klass.rules['DVD_season'].should == :dvd_season
    end

    it 'should map Director' do
      klass.rules['Director'].should == :director
    end

    it 'should map EpImgFlag' do
      klass.rules['EpImgFlag'].should == :ep_img_flag
    end

    it 'should map EpisodeName' do
      klass.rules['EpisodeName'].should == :name
    end

    it 'should map EpisodeNumber' do
      klass.rules['EpisodeNumber'].should == :number
    end

    it 'should map FirstAired' do
      klass.rules['FirstAired'].should == :first_aired
    end

    it 'should map GuestStars' do
      klass.rules['GuestStars'].should == :guest_stars
    end

    it 'should map IMDB_ID' do
      klass.rules['IMDB_ID'].should == :imdb_id
    end

    it 'should map Language' do
      klass.rules['Language'].should == :language
    end

    it 'should map Overview' do
      klass.rules['Overview'].should == :overview
    end

    it 'should map ProductionCode' do
      klass.rules['ProductionCode'].should == :production_code
    end

    it 'should map Rating' do
      klass.rules['Rating'].should == :rating
    end

    it 'should map RatingCount' do
      klass.rules['RatingCount'].should == :rating_count
    end

    it 'should map SeasonNumber' do
      klass.rules['SeasonNumber'].should == :season
    end

    it 'should map Writer' do
      klass.rules['Writer'].should == :writer
    end

    it 'should map absolute_number' do
      klass.rules['absolute_number'].should == :absolute_number
    end

    it 'should map airsafter_season' do
      klass.rules['airsafter_season'].should == :airs_after_season
    end

    it 'should map airsbefore_episode' do
      klass.rules['airsbefore_episode'].should == :airs_before_episode
    end

    it 'should map airsbefore_season' do
      klass.rules['airsbefore_season'].should == :airs_before_season
    end

    it 'should map filename' do
      klass.rules['filename'].should == :filename_path
    end

    it 'should map lastupdated' do
      klass.rules['lastupdated'].should == :last_updated_at
    end

    it 'should map seasonid' do
      klass.rules['seasonid'].should == :season_id
    end

    it 'should map seriesid' do
      klass.rules['seriesid'].should == :series_id
    end

    it 'should map thumb_added' do
      klass.rules['thumb_added'].should == :thumbnail_added_at
    end

    it 'should map thumb_height' do
      klass.rules['thumb_height'].should == :thumbnail_height
    end

    it 'should map thumb_width' do
      klass.rules['thumb_width'].should == :thumbnail_width
    end
  end

  describe '#convert' do
    let(:input) { { director: true, guest_stars: true, writer: true, last_updated_at: 1} }
    let(:output) { { director: 'LIST', guest_stars: 'LIST', writer: 'LIST', last_updated_at: 'TIME'} }

    before do
      klass.stub(:convert_to_list).and_return('LIST')
      Time.stub(:at).and_return('TIME')
    end

    it 'should return correct hash' do
      klass.convert(input).should == output
    end
  end
end
