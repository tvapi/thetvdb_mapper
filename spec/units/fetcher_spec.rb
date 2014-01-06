require 'spec_helper'

describe ThetvdbMapper::Fetcher do
  let(:model) { ThetvdbMapper::Fetcher.new }

  describe '.series' do
    before do
      model.stub_chain(:client, :series).and_return(double(find: true))
    end

    it 'should call series find' do
      model.client.series.should_receive(:find).with(1, mapping: true)
      model.series(1)
    end
  end

  describe '.full_series' do
    before do
      model.stub_chain(:client, :series).and_return(double(find_full: true))
    end

    it 'should call series find_full' do
      model.client.series.should_receive(:find_full).with(1, mapping: true)
      model.full_series(1)
    end
  end

  describe '.actors' do
    before do
      model.stub_chain(:client, :actor).and_return(double(find: true))
    end

    it 'should call actor all' do
      model.client.actor.should_receive(:find).with(1, mapping: true)
      model.actors(1)
    end
  end

  describe '.banners' do
    before do
      model.stub_chain(:client, :banner).and_return(double(find: true))
    end

    it 'should call banner all' do
      model.client.banner.should_receive(:find).with(1, mapping: true)
      model.banners(1)
    end
  end

  describe '.episode' do
    before do
      model.stub_chain(:client, :episode).and_return(double(find: true))
    end

    it 'should call episode find_by_default_order' do
      model.client.episode.should_receive(:find).with(1, mapping: true)
      model.episode(1)
    end
  end

  describe '.client' do
    it 'should create ThetvdbApi::Client instance' do
      ThetvdbApi::Client.should_receive(:new)
      model.client
    end
  end
end
