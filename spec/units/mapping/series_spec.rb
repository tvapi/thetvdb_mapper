require 'spec_helper'

describe ThetvdbMapper::Mapping::Series do
  let(:model) { ThetvdbMapper::Mapping::Series.new({}) }

  describe '#rules' do
    it 'should map id' do
      model.rules['id'].should == :id
    end

    it 'should map Airs_DayOfWeek' do
      model.rules['Airs_DayOfWeek'].should == :airs_day_of_week
    end

    it 'should map Airs_Time' do
      model.rules['Airs_Time'].should == :airs_time
    end

    it 'should map ContentRating' do
      model.rules['ContentRating'].should == :content_rating
    end

    it 'should map FirstAired' do
      model.rules['FirstAired'].should == :first_aired
    end

    it 'should map Genre' do
      model.rules['Genre'].should == :genres
    end

    it 'should map IMDB_ID' do
      model.rules['IMDB_ID'].should == :imdb_id
    end

    it 'should map Language' do
      model.rules['Language'].should == :language
    end

    it 'should map Network' do
      model.rules['Network'].should == :network
    end

    it 'should map NetworkID' do
      model.rules['NetworkID'].should == :network_id
    end

    it 'should map Overview' do
      model.rules['Overview'].should == :overview
    end

    it 'should map Rating' do
      model.rules['Rating'].should == :rating
    end

    it 'should map RatingCount' do
      model.rules['RatingCount'].should == :rating_count
    end

    it 'should map Runtime' do
      model.rules['Runtime'].should == :runtime
    end

    it 'should map SeriesName' do
      model.rules['SeriesName'].should == :name
    end

    it 'should map Status' do
      model.rules['Status'].should == :status
    end

    it 'should map added' do
      model.rules['added'].should == :added_at
    end

    it 'should map addedBy' do
      model.rules['addedBy'].should == :added_by
    end

    it 'should map banner' do
      model.rules['banner'].should == :banner_path
    end

    it 'should map fanart' do
      model.rules['fanart'].should == :fanart_path
    end

    it 'should map lastupdated' do
      model.rules['lastupdated'].should == :last_updated_at
    end

    it 'should map poster' do
      model.rules['poster'].should == :poster_path
    end

    it 'should map zap2it_id' do
      model.rules['zap2it_id'].should == :zap2it_id
    end
  end

  describe '#convert' do
    let(:input) { { genres: true, last_updated_at: 1} }
    let(:output) { { genres: 'LIST', last_updated_at: 'TIME'} }
    let(:model) { ThetvdbMapper::Mapping::Series.new(input) }

    before do
      model.stub(:convert_to_list).and_return('LIST')
      Time.stub(:at).and_return('TIME')
    end

    it 'should return correct hash' do
      model.convert.should == output
    end
  end
end
