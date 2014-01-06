require 'spec_helper'

describe ThetvdbMapper::Mapping::Banner do
  let(:klass) { ThetvdbMapper::Mapping::Banner }

  describe '#map' do
    it 'should return specific keys' do
      klass.map({}).keys.sort.should == [:path, :thumbnail_path, :vignette_path, :type, :type2, :language, :season,
                                         :rating, :rating_count, :series_name, :colors].sort
    end

    it 'should map BannerPath' do
      klass.map('BannerPath' => 'test')[:path].should == 'test'
    end

    it 'should map ThumbnailPath' do
      klass.map('ThumbnailPath' => 'test')[:thumbnail_path].should == 'test'
    end

    it 'should map VignettePath' do
      klass.map('VignettePath' => 'test')[:vignette_path].should == 'test'
    end

    it 'should map BannerType' do
      klass.map('BannerType' => 'test')[:type].should == 'test'
    end

    it 'should map BannerType2' do
      klass.map('BannerType2' => 'test')[:type2].should == 'test'
    end

    it 'should map Language' do
      klass.map('Language' => 'test')[:language].should == 'test'
    end

    it 'should map Season' do
      klass.map('Season' => 'test')[:season].should == 'test'
    end

    it 'should map Rating' do
      klass.map('Rating' => 'test')[:rating].should == 'test'
    end

    it 'should map RatingCount' do
      klass.map('RatingCount' => 'test')[:rating_count].should == 'test'
    end

    it 'should map SeriesName' do
      klass.map('SeriesName' => 'test')[:series_name].should == 'test'
    end

    it 'should map Colors' do
      klass.map('Colors' => 'test')[:colors].should == 'test'
    end
  end
end
