require 'spec_helper'

describe ThetvdbMapper::Mapping::Episode do
  let(:model) { ThetvdbMapper::Mapping::Episode.new({}) }

  describe '#map' do
    it 'should return specific keys' do
      model.map.keys.sort.should == [:id, :combined_episode_number, :combined_season, :dvd_episode_number,
        :dvd_season, :director, :ep_img_flag, :name, :number, :first_aired, :guest_stars, :imdb_id, :language,
        :overview, :production_code, :rating, :rating_count, :season, :writer, :absolute_number, :airs_after_season,
        :airs_before_episode, :airs_before_season, :filename_path, :last_updated_at, :season_id, :series_id,
        :thumbnail_added_at, :thumbnail_height, :thumbnail_width].sort
    end

    it 'should map id' do
      model.stub(:data).and_return('id' => 1234)
      model.map[:id].should == 1234
    end

    it 'should map Combined_episodenumber' do
      model.stub(:data).and_return('Combined_episodenumber' => 1234)
      model.map[:combined_episode_number].should == 1234
    end

    it 'should map Combined_season' do
      model.stub(:data).and_return('Combined_season' => 1234)
      model.map[:combined_season].should == 1234
    end

    it 'should map DVD_episodenumber' do
      model.stub(:data).and_return('DVD_episodenumber' => 1234)
      model.map[:dvd_episode_number].should == 1234
    end

    it 'should map DVD_season' do
      model.stub(:data).and_return('DVD_season' => 1234)
      model.map[:dvd_season].should == 1234
    end

    it 'should map Director' do
      model.stub(:data).and_return('Director' => '|test|')
      model.map[:director].should == ['test']
    end

    it 'should map EpImgFlag' do
      model.stub(:data).and_return('EpImgFlag' => 1234)
      model.map[:ep_img_flag].should == 1234
    end

    it 'should map EpisodeName' do
      model.stub(:data).and_return('EpisodeName' => 'test')
      model.map[:name].should == 'test'
    end

    it 'should map EpisodeNumber' do
      model.stub(:data).and_return('EpisodeNumber' => 1234)
      model.map[:number].should == 1234
    end

    it 'should map FirstAired' do
      model.stub(:data).and_return('FirstAired' => 1234)
      model.map[:first_aired].should == 1234
    end

    it 'should map GuestStars' do
      model.stub(:data).and_return('GuestStars' => '|test|')
      model.map[:guest_stars].should == ['test']
    end

    it 'should map IMDB_ID' do
      model.stub(:data).and_return('IMDB_ID' => 'test')
      model.map[:imdb_id].should == 'test'
    end

    it 'should map Language' do
      model.stub(:data).and_return('Language' => 'test')
      model.map[:language].should == 'test'
    end

    it 'should map Overview' do
      model.stub(:data).and_return('Overview' => 'test')
      model.map[:overview].should == 'test'
    end

    it 'should map ProductionCode' do
      model.stub(:data).and_return('ProductionCode' => 'test')
      model.map[:production_code].should == 'test'
    end

    it 'should map Rating' do
      model.stub(:data).and_return('Rating' => '1.0')
      model.map[:rating].should == '1.0'
    end

    it 'should map RatingCount' do
      model.stub(:data).and_return('RatingCount' => '1')
      model.map[:rating_count].should == '1'
    end

    it 'should map SeasonNumber' do
      model.stub(:data).and_return('SeasonNumber' => '1')
      model.map[:season].should == '1'
    end

    it 'should map Writer' do
      model.stub(:data).and_return('Writer' => '|test|')
      model.map[:writer].should == ['test']
    end

    it 'should map absolute_number' do
      model.stub(:data).and_return('absolute_number' => '1')
      model.map[:absolute_number].should == '1'
    end

    it 'should map airsafter_season' do
      model.stub(:data).and_return('airsafter_season' => '1')
      model.map[:airs_after_season].should == '1'
    end

    it 'should map airsbefore_episode' do
      model.stub(:data).and_return('airsbefore_episode' => '1')
      model.map[:airs_before_episode].should == '1'
    end

    it 'should map airsbefore_season' do
      model.stub(:data).and_return('airsbefore_season' => '1')
      model.map[:airs_before_season].should == '1'
    end

    it 'should map filename' do
      model.stub(:data).and_return('filename' => 'test')
      model.map[:filename_path].should == 'test'
    end

    it 'should map lastupdated' do
      model.stub(:data).and_return('lastupdated' => '1234')
      model.map[:last_updated_at].should == Time.at(1234)
    end

    it 'should map seasonid' do
      model.stub(:data).and_return('seasonid' => '1')
      model.map[:season_id].should == '1'
    end

    it 'should map seriesid' do
      model.stub(:data).and_return('seriesid' => '1')
      model.map[:series_id].should == '1'
    end

    it 'should map thumb_added' do
      model.stub(:data).and_return('thumb_added' => 'test')
      model.map[:thumbnail_added_at].should == 'test'
    end

    it 'should map thumb_height' do
      model.stub(:data).and_return('thumb_height' => 'test')
      model.map[:thumbnail_height].should == 'test'
    end

    it 'should map thumb_width' do
      model.stub(:data).and_return('thumb_width' => 'test')
      model.map[:thumbnail_width].should == 'test'
    end
  end
end
