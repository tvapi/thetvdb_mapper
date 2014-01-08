require 'spec_helper'

describe ThetvdbMapper::FullSeries do
  let(:model) { ThetvdbMapper::FullSeries.new(1) }

  describe '.data' do
    before do
      model.stub(:series).and_return({})
      model.stub(:episodes).and_return([])
      model.stub(:actors).and_return([])
      model.stub(:banners).and_return([])
    end

    it 'should call series' do
      model.stub(:series).and_return(sample: true)
      model.data[:sample].should be_true
    end

    it 'should store episodes in data hash' do
      model.stub(:episodes).and_return([{ sample: true }])
      model.data[:episodes].should == [{ sample: true }]
    end

    it 'should store actors in data hash' do
      model.stub(:actors).and_return([{ sample: true }])
      model.data[:actors].should == [{ sample: true }]
    end

    it 'should store banners in data hash' do
      model.stub(:banners).and_return([{ sample: true }])
      model.data[:banners].should == [{ sample: true }]
    end
  end

  describe '.series' do
    before do
      model.stub_chain(:fetcher, :full_series, :body).and_return({ 'Series' => { sample: true } })
    end

    it 'should map series' do
      model.stub(:mapping_series_object).and_return(double(map: true))
      model.mapping_series_object(sample: true).should_receive(:map)
      model.series
    end
  end

  describe '.episodes' do
    before do
      model.stub_chain(:fetcher, :full_series, :body).and_return({ 'Episode' => [{ sample: true }] })
    end

    it 'should map episode' do
      model.should_receive(:map_episode).with(sample: true)
      model.episodes
    end
  end

  describe '.map_episode' do
    it 'should map episode' do
      model.stub(:mapping_episode_object).and_return(double(map: true))
      model.mapping_episode_object(sample: true).should_receive(:map)
      model.map_episode(sample: true)
    end
  end

  describe '.actors' do
    before do
      model.stub_chain(:fetcher, :actors, :body).and_return([{ sample: true }])
    end

    it 'should map actor' do
      model.should_receive(:map_actor).with(sample: true)
      model.actors
    end
  end

  describe '.map_actor' do
    it 'should map actor' do
      model.stub(:mapping_actor_object).and_return(double(map: true))
      model.mapping_actor_object(sample: true).should_receive(:map)
      model.map_actor(sample: true)
    end
  end

  describe '.banners' do
    before do
      model.stub_chain(:fetcher, :banners, :body).and_return([{ sample: true }])
    end

    it 'should map banner' do
      model.should_receive(:map_banner).with(sample: true)
      model.banners
    end
  end

  describe '.map_banner' do
    before do
      model.stub(:mapping_banner_object).with(sample: true).and_return(double(map: true))
    end

    it 'should map banner' do
      model.mapping_banner_object(sample: true).should_receive(:map)
      model.map_banner(sample: true)
    end
  end

  describe '.mapping_series_object' do
    it 'should return mapping series instance' do
      model.mapping_series_object(sample: true).class.should == ThetvdbMapper::Mapping::Series
    end
  end

  describe '.mapping_episode_object' do
    it 'should return mapping episode instance' do
      model.mapping_episode_object(sample: true).class.should == ThetvdbMapper::Mapping::Episode
    end
  end

  describe '.mapping_actor_object' do
    it 'should return mapping actor instance' do
      model.mapping_actor_object(sample: true).class.should == ThetvdbMapper::Mapping::Actor
    end
  end

  describe '.mapping_banner_object' do
    it 'should return mapping banner instance' do
      model.mapping_banner_object(sample: true).class.should == ThetvdbMapper::Mapping::Banner
    end
  end

  describe '.inspect' do
    before do
      model.stub(:data).and_return('DATA')
    end

    it 'should return correct string' do
      model.inspect.should == '<ThetvdbMapper::FullSeries data=DATA >'
    end
  end
end
