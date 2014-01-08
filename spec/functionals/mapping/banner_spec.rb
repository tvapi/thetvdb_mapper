require 'spec_helper'

describe ThetvdbMapper::Mapping::Banner do
  let(:model) { ThetvdbMapper::Mapping::Banner.new({}) }

  describe '#map' do
    it 'should return specific keys' do
      model.map.keys.sort.should == [:path, :thumbnail_path, :vignette_path, :type, :type2, :language, :season,
        :rating, :rating_count, :series_name, :colors, :id].sort
    end

    it 'should map id' do
      model.stub(:data).and_return('id' => '1')
      model.map[:id].should == '1'
    end

    it 'should map BannerPath' do
      model.stub(:data).and_return('BannerPath' => 'test')
      model.map[:path].should == 'test'
    end

    it 'should map ThumbnailPath' do
      model.stub(:data).and_return('ThumbnailPath' => 'test')
      model.map[:thumbnail_path].should == 'test'
    end

    it 'should map VignettePath' do
      model.stub(:data).and_return('VignettePath' => 'test')
      model.map[:vignette_path].should == 'test'
    end

    it 'should map BannerType' do
      model.stub(:data).and_return('BannerType' => 'test')
      model.map[:type].should == 'test'
    end

    it 'should map BannerType2' do
      model.stub(:data).and_return('BannerType2' => 'test')
      model.map[:type2].should == 'test'
    end

    it 'should map Language' do
      model.stub(:data).and_return('Language' => 'test')
      model.map[:language].should == 'test'
    end

    it 'should map Season' do
      model.stub(:data).and_return('Season' => 'test')
      model.map[:season].should == 'test'
    end

    it 'should map Rating' do
      model.stub(:data).and_return('Rating' => 'test')
      model.map[:rating].should == 'test'
    end

    it 'should map RatingCount' do
      model.stub(:data).and_return('RatingCount' => 'test')
      model.map[:rating_count].should == 'test'
    end

    it 'should map SeriesName' do
      model.stub(:data).and_return('SeriesName' => 'test')
      model.map[:series_name].should == 'test'
    end

    it 'should map Colors' do
      model.stub(:data).and_return('Colors' => 'test')
      model.map[:colors].should == 'test'
    end
  end
end
