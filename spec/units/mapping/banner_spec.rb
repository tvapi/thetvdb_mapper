require 'spec_helper'

describe ThetvdbMapper::Mapping::Banner do
  let(:klass) { ThetvdbMapper::Mapping::Banner }

  describe '#rules' do
    it 'should map BannerPath' do
      klass.rules['BannerPath'].should == :path
    end

    it 'should map ThumbnailPath' do
      klass.rules['ThumbnailPath'].should == :thumbnail_path
    end

    it 'should map VignettePath' do
      klass.rules['VignettePath'].should == :vignette_path
    end

    it 'should map BannerType' do
      klass.rules['BannerType'].should == :type
    end

    it 'should map BannerType2' do
      klass.rules['BannerType2'].should == :type2
    end

    it 'should map Language' do
      klass.rules['Language'].should == :language
    end

    it 'should map Season' do
      klass.rules['Season'].should == :season
    end

    it 'should map Rating' do
      klass.rules['Rating'].should == :rating
    end

    it 'should map RatingCount' do
      klass.rules['RatingCount'].should == :rating_count
    end

    it 'should map SeriesName' do
      klass.rules['SeriesName'].should == :series_name
    end

    it 'should map Colors' do
      klass.rules['Colors'].should == :colors
    end
  end
end
