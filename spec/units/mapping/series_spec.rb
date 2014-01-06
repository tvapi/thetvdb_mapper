require 'spec_helper'

describe ThetvdbMapper::Mapping::Series do
  let(:klass) { ThetvdbMapper::Mapping::Series }

  describe '#rules' do
    it 'should map id' do
      klass.rules['id'].should == :id
    end

    it 'should map Airs_DayOfWeek' do
      klass.rules['Airs_DayOfWeek'].should == :airs_day_of_week
    end

    it 'should map Airs_Time' do
      klass.rules['Airs_Time'].should == :airs_time
    end

    it 'should map ContentRating' do
      klass.rules['ContentRating'].should == :content_rating
    end

    it 'should map FirstAired' do
      klass.rules['FirstAired'].should == :first_aired
    end

    it 'should map genre' do
      klass.rules['genre'].should == :genres
    end

    it 'should map IMDB_ID' do
      klass.rules['IMDB_ID'].should == :imdb_id
    end

    it 'should map Language' do
      klass.rules['Language'].should == :language
    end

    it 'should map Network' do
      klass.rules['Network'].should == :network
    end

    it 'should map NetworkID' do
      klass.rules['NetworkID'].should == :network_id
    end

    it 'should map Overview' do
      klass.rules['Overview'].should == :overview
    end

    it 'should map Rating' do
      klass.rules['Rating'].should == :rating
    end

    it 'should map RatingCount' do
      klass.rules['RatingCount'].should == :rating_count
    end

    it 'should map Runtime' do
      klass.rules['Runtime'].should == :runtime
    end

    it 'should map SeriesName' do
      klass.rules['SeriesName'].should == :name
    end

    it 'should map Status' do
      klass.rules['Status'].should == :status
    end

    it 'should map added' do
      klass.rules['added'].should == :added_at
    end

    it 'should map added_by' do
      klass.rules['added_by'].should == :added_by
    end

    it 'should map banner' do
      klass.rules['banner'].should == :banner_path
    end

    it 'should map fanart' do
      klass.rules['fanart'].should == :fanart_path
    end

    it 'should map lastupdated' do
      klass.rules['lastupdated'].should == :last_updated_at
    end

    it 'should map poster' do
      klass.rules['poster'].should == :poster_path
    end

    it 'should map zap2it_id' do
      klass.rules['zap2it_id'].should == :zap2it_id
    end
  end

  describe '#convert' do
    let(:input) { { genres: true, last_updated_at: 1} }
    let(:output) { { genres: 'LIST', last_updated_at: 'TIME'} }

    before do
      klass.stub(:convert_to_list).and_return('LIST')
      Time.stub(:at).and_return('TIME')
    end

    it 'should return correct hash' do
      klass.convert(input).should == output
    end
  end
end
