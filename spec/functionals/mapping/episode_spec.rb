require 'spec_helper'

describe ThetvdbMapper::Mapping::Episode do
  let(:klass) { ThetvdbMapper::Mapping::Episode }

  describe '#map' do
    it 'should return specific keys' do
      klass.map({}).keys.sort.should == [:id, :combined_episode_number, :combined_season, :dvd_episode_number,
        :dvd_season, :director, :ep_img_flag, :name, :number, :first_aired, :guest_stars, :imdb_id, :language,
        :overview, :production_code, :rating, :rating_count, :season, :writer, :absolute_number, :airs_after_season,
        :airs_before_episode, :airs_before_season, :filename_path, :last_updated_at, :season_id, :series_id,
        :thumbnail_added_at, :thumbnail_height, :thumbnail_width].sort
    end

    it 'should map id' do
      klass.map('id' => 1234)[:id].should == 1234
    end

    it 'should map Combined_episodenumber' do
      klass.map('Combined_episodenumber' => 1234)[:combined_episode_number].should == 1234
    end

    it 'should map Combined_season' do
      klass.map('Combined_season' => 1234)[:combined_season].should == 1234
    end

    it 'should map DVD_episodenumber' do
      klass.map('DVD_episodenumber' => 1234)[:dvd_episode_number].should == 1234
    end

    it 'should map DVD_season' do
      klass.map('DVD_season' => 1234)[:dvd_season].should == 1234
    end

    it 'should map Director' do
      klass.map('Director' => '|test|')[:director].should == ['test']
    end

    it 'should map EpImgFlag' do
      klass.map('EpImgFlag' => 1234)[:ep_img_flag].should == 1234
    end

    it 'should map EpisodeName' do
      klass.map('EpisodeName' => 'test')[:name].should == 'test'
    end

    it 'should map EpisodeNumber' do
      klass.map('EpisodeNumber' => 1234)[:number].should == 1234
    end

    it 'should map FirstAired' do
      klass.map('FirstAired' => 1234)[:first_aired].should == 1234
    end

    it 'should map GuestStars' do
      klass.map('GuestStars' => '|test|')[:guest_stars].should == ['test']
    end

    it 'should map IMDB_ID' do
      klass.map('IMDB_ID' => 'test')[:imdb_id].should == 'test'
    end

    it 'should map Language' do
      klass.map('Language' => 'test')[:language].should == 'test'
    end

    it 'should map Overview' do
      klass.map('Overview' => 'test')[:overview].should == 'test'
    end

    it 'should map ProductionCode' do
      klass.map('ProductionCode' => 'test')[:production_code].should == 'test'
    end

    it 'should map Rating' do
      klass.map('Rating' => '1.0')[:rating].should == '1.0'
    end

    it 'should map RatingCount' do
      klass.map('RatingCount' => '1')[:rating_count].should == '1'
    end

    it 'should map SeasonNumber' do
      klass.map('SeasonNumber' => '1')[:season].should == '1'
    end

    it 'should map Writer' do
      klass.map('Writer' => '|test|')[:writer].should == ['test']
    end

    it 'should map absolute_number' do
      klass.map('absolute_number' => '1')[:absolute_number].should == '1'
    end

    it 'should map airsafter_season' do
      klass.map('airsafter_season' => '1')[:airs_after_season].should == '1'
    end

    it 'should map airsbefore_episode' do
      klass.map('airsbefore_episode' => '1')[:airs_before_episode].should == '1'
    end

    it 'should map airsbefore_season' do
      klass.map('airsbefore_season' => '1')[:airs_before_season].should == '1'
    end

    it 'should map filename' do
      klass.map('filename' => 'test')[:filename_path].should == 'test'
    end

    it 'should map lastupdated' do
      klass.map('lastupdated' => '1234')[:last_updated_at].should == Time.at(1234)
    end

    it 'should map seasonid' do
      klass.map('seasonid' => '1')[:season_id].should == '1'
    end

    it 'should map seriesid' do
      klass.map('seriesid' => '1')[:series_id].should == '1'
    end

    it 'should map thumb_added' do
      klass.map('thumb_added' => 'test')[:thumbnail_added_at].should == 'test'
    end

    it 'should map thumb_height' do
      klass.map('thumb_height' => 'test')[:thumbnail_height].should == 'test'
    end

    it 'should map thumb_width' do
      klass.map('thumb_width' => 'test')[:thumbnail_width].should == 'test'
    end
  end
end
