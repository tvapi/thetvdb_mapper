require 'spec_helper'

describe ThetvdbMapper::Mapping::Series do
  let(:model) { ThetvdbMapper::Mapping::Series.new({}) }

  describe '#map' do
    it 'should return specific keys' do
      model.map.keys.sort.should == [:id, :airs_day_of_week, :airs_time, :content_rating, :first_aired, :genres,
        :imdb_id, :language, :network, :network_id, :overview, :rating, :rating_count, :runtime, :name, :status,
        :added_at, :added_by, :banner_path, :fanart_path, :last_updated_at, :poster_path, :zap2it_id].sort
    end

    it 'should map id' do
      model.stub(:data).and_return('id' => 1234)
      model.map[:id].should == 1234
    end

    it 'should map Airs_DayOfWeek' do
      model.stub(:data).and_return('Airs_DayOfWeek' => 'Monday')
      model.map[:airs_day_of_week].should == 'Monday'
    end

    it 'should map Airs_Time' do
      model.stub(:data).and_return('Airs_Time' => '8:00 AM')
      model.map[:airs_time].should == '8:00 AM'
    end

    it 'should map ContentRating' do
      model.stub(:data).and_return('ContentRating' => 'TV-PG')
      model.map[:content_rating].should == 'TV-PG'
    end

    it 'should map FirstAired' do
      model.stub(:data).and_return('FirstAired' => '1997-07-01')
      model.map[:first_aired].should == '1997-07-01'
    end

    it 'should map Genre' do
      model.stub(:data).and_return('Genre' => '|comedy|')
      model.map[:genres].should == ['comedy']
    end

    it 'should map IMDB_ID' do
      model.stub(:data).and_return('IMDB_ID' => 'tt0118480')
      model.map[:imdb_id].should == 'tt0118480'
    end

    it 'should map Language' do
      model.stub(:data).and_return('Language' => 'en')
      model.map[:language].should == 'en'
    end

    it 'should map Network' do
      model.stub(:data).and_return('Network' => 'SciFi')
      model.map[:network].should == 'SciFi'
    end

    it 'should map NetworkID' do
      model.stub(:data).and_return('NetworkID' => '1')
      model.map[:network_id].should == '1'
    end

    it 'should map Overview' do
      model.stub(:data).and_return('Overview' => 'example overview')
      model.map[:overview].should == 'example overview'
    end

    it 'should map Rating' do
      model.stub(:data).and_return('Rating' => '1.0')
      model.map[:rating].should == '1.0'
    end

    it 'should map RatingCount' do
      model.stub(:data).and_return('RatingCount' => '1')
      model.map[:rating_count].should == '1'
    end

    it 'should map Runtime' do
      model.stub(:data).and_return('Runtime' => '45')
      model.map[:runtime].should == '45'
    end

    it 'should map SeriesName' do
      model.stub(:data).and_return('SeriesName' => 'Stargate SG-1')
      model.map[:name].should == 'Stargate SG-1'
    end

    it 'should map Status' do
      model.stub(:data).and_return('Status' => 'Ended')
      model.map[:status].should == 'Ended'
    end

    it 'should map added' do
      model.stub(:data).and_return('added' => '1')
      model.map[:added_at].should == '1'
    end

    it 'should map addedBy' do
      model.stub(:data).and_return('addedBy' => '1')
      model.map[:added_by].should == '1'
    end

    it 'should map banner' do
      model.stub(:data).and_return('banner' => 'PATH')
      model.map[:banner_path].should == 'PATH'
    end

    it 'should map fanart' do
      model.stub(:data).and_return('fanart' => 'PATH')
      model.map[:fanart_path].should == 'PATH'
    end

    it 'should map lastupdated' do
      model.stub(:data).and_return('lastupdated' => '1234')
      model.map[:last_updated_at].should == Time.at(1234)
    end

    it 'should map poster' do
      model.stub(:data).and_return('poster' => 'PATH')
      model.map[:poster_path].should == 'PATH'
    end

    it 'should map zap2it_id' do
      model.stub(:data).and_return('zap2it_id' => '1234')
      model.map[:zap2it_id].should == '1234'
    end
  end
end
