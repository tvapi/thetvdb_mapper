require 'spec_helper'

describe ThetvdbMapper::Mapping::Episode do
  let(:model) { ThetvdbMapper::Mapping::Episode.new({}) }

  describe '#map' do
    it 'should map id' do
      model.rules['id'].should == :id
    end

    it 'should map Combined_episodenumber' do
      model.rules['Combined_episodenumber'].should == :combined_episode_number
    end

    it 'should map Combined_season' do
      model.rules['Combined_season'].should == :combined_season
    end

    it 'should map DVD_episodenumber' do
      model.rules['DVD_episodenumber'].should == :dvd_episode_number
    end

    it 'should map DVD_season' do
      model.rules['DVD_season'].should == :dvd_season
    end

    it 'should map Director' do
      model.rules['Director'].should == :director
    end

    it 'should map EpImgFlag' do
      model.rules['EpImgFlag'].should == :ep_img_flag
    end

    it 'should map EpisodeName' do
      model.rules['EpisodeName'].should == :name
    end

    it 'should map EpisodeNumber' do
      model.rules['EpisodeNumber'].should == :number
    end

    it 'should map FirstAired' do
      model.rules['FirstAired'].should == :first_aired
    end

    it 'should map GuestStars' do
      model.rules['GuestStars'].should == :guest_stars
    end

    it 'should map IMDB_ID' do
      model.rules['IMDB_ID'].should == :imdb_id
    end

    it 'should map Language' do
      model.rules['Language'].should == :language
    end

    it 'should map Overview' do
      model.rules['Overview'].should == :overview
    end

    it 'should map ProductionCode' do
      model.rules['ProductionCode'].should == :production_code
    end

    it 'should map Rating' do
      model.rules['Rating'].should == :rating
    end

    it 'should map RatingCount' do
      model.rules['RatingCount'].should == :rating_count
    end

    it 'should map SeasonNumber' do
      model.rules['SeasonNumber'].should == :season
    end

    it 'should map Writer' do
      model.rules['Writer'].should == :writer
    end

    it 'should map absolute_number' do
      model.rules['absolute_number'].should == :absolute_number
    end

    it 'should map airsafter_season' do
      model.rules['airsafter_season'].should == :airs_after_season
    end

    it 'should map airsbefore_episode' do
      model.rules['airsbefore_episode'].should == :airs_before_episode
    end

    it 'should map airsbefore_season' do
      model.rules['airsbefore_season'].should == :airs_before_season
    end

    it 'should map filename' do
      model.rules['filename'].should == :filename_path
    end

    it 'should map lastupdated' do
      model.rules['lastupdated'].should == :last_updated_at
    end

    it 'should map seasonid' do
      model.rules['seasonid'].should == :season_id
    end

    it 'should map seriesid' do
      model.rules['seriesid'].should == :series_id
    end

    it 'should map thumb_added' do
      model.rules['thumb_added'].should == :thumbnail_added_at
    end

    it 'should map thumb_height' do
      model.rules['thumb_height'].should == :thumbnail_height
    end

    it 'should map thumb_width' do
      model.rules['thumb_width'].should == :thumbnail_width
    end
  end

  describe '#convert' do
    let(:input) { { director: true, guest_stars: true, writer: true, last_updated_at: 1} }
    let(:output) { { director: 'LIST', guest_stars: 'LIST', writer: 'LIST', last_updated_at: 'TIME'} }
    let(:model) { ThetvdbMapper::Mapping::Episode.new(input) }

    before do
      model.stub(:convert_to_list).and_return('LIST')
      Time.stub(:at).and_return('TIME')
    end

    it 'should return correct hash' do
      model.convert.should == output
    end
  end
end
