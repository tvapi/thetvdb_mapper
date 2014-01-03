require 'spec_helper'

describe ThetvdbMapper::Mapping::Series do
  let(:klass) { ThetvdbMapper::Mapping::Series }

  describe '#map' do
    it 'should return specific keys' do
      klass.map({}).keys.sort.should == [:id, :airs_day_of_week, :airs_time, :content_rating, :first_aired, :genres,
        :imdb_id, :language, :network, :network_id, :overview, :rating, :rating_count, :runtime, :name, :status,
        :added_at, :added_by, :banner_path, :fanart_path, :last_updated_at, :poster_path, :zap2it_id].sort
    end

    it 'should map id' do
      klass.map('id' => 1234)[:id].should == 1234
    end

    it 'should map Airs_DayOfWeek' do
      klass.map('Airs_DayOfWeek' => 'Monday')[:airs_day_of_week].should == 'Monday'
    end

    it 'should map Airs_Time' do
      klass.map('Airs_Time' => '8:00 AM')[:airs_time].should == '8:00 AM'
    end

    it 'should map ContentRating' do
      klass.map('ContentRating' => 'TV-PG')[:content_rating].should == 'TV-PG'
    end

    it 'should map FirstAired' do
      klass.map('FirstAired' => '1997-07-01')[:first_aired].should == '1997-07-01'
    end

    it 'should map genre' do
      klass.map('genre' => '|comedy|')[:genres].should == ['comedy']
    end

    it 'should map IMDB_ID' do
      klass.map('IMDB_ID' => 'tt0118480')[:imdb_id].should == 'tt0118480'
    end

    it 'should map Language' do
      klass.map('Language' => 'en')[:language].should == 'en'
    end

    it 'should map Network' do
      klass.map('Network' => 'SciFi')[:network].should == 'SciFi'
    end

    it 'should map NetworkID' do
      klass.map('NetworkID' => '1')[:network_id].should == '1'
    end

    it 'should map Overview' do
      klass.map('Overview' => 'example overview')[:overview].should == 'example overview'
    end

    it 'should map Rating' do
      klass.map('Rating' => '1.0')[:rating].should == '1.0'
    end

    it 'should map RatingCount' do
      klass.map('RatingCount' => '1')[:rating_count].should == '1'
    end

    it 'should map Runtime' do
      klass.map('Runtime' => '45')[:runtime].should == '45'
    end

    it 'should map SeriesName' do
      klass.map('SeriesName' => 'Stargate SG-1')[:name].should == 'Stargate SG-1'
    end

    it 'should map Status' do
      klass.map('Status' => 'Ended')[:status].should == 'Ended'
    end

    it 'should map added' do
      klass.map('added' => '1')[:added_at].should == '1'
    end

    it 'should map added_by' do
      klass.map('added_by' => '1')[:added_by].should == '1'
    end

    it 'should map banner' do
      klass.map('banner' => 'PATH')[:banner_path].should == 'PATH'
    end

    it 'should map fanart' do
      klass.map('fanart' => 'PATH')[:fanart_path].should == 'PATH'
    end

    it 'should map lastupdated' do
      klass.map('lastupdated' => '1234')[:last_updated_at].should == Time.at(1234)
    end

    it 'should map poster' do
      klass.map('poster' => 'PATH')[:poster_path].should == 'PATH'
    end

    it 'should map zap2it_id' do
      klass.map('zap2it_id' => '1234')[:zap2it_id].should == '1234'
    end
  end
end
