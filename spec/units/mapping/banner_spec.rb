require 'spec_helper'

describe ThetvdbMapper::Mapping::Banner do
  let(:model) { ThetvdbMapper::Mapping::Banner.new({}) }

  describe '#rules' do
    it 'should map id' do
      model.rules['id'].should == :id
    end
    it 'should map BannerPath' do
      model.rules['BannerPath'].should == :path
    end

    it 'should map ThumbnailPath' do
      model.rules['ThumbnailPath'].should == :thumbnail_path
    end

    it 'should map VignettePath' do
      model.rules['VignettePath'].should == :vignette_path
    end

    it 'should map BannerType' do
      model.rules['BannerType'].should == :kind
    end

    it 'should map BannerType2' do
      model.rules['BannerType2'].should == :kind2
    end

    it 'should map Language' do
      model.rules['Language'].should == :language
    end

    it 'should map Season' do
      model.rules['Season'].should == :season
    end

    it 'should map Rating' do
      model.rules['Rating'].should == :rating
    end

    it 'should map RatingCount' do
      model.rules['RatingCount'].should == :rating_count
    end

    it 'should map SeriesName' do
      model.rules['SeriesName'].should == :series_name
    end

    it 'should map Colors' do
      model.rules['Colors'].should == :colors
    end
  end
end
