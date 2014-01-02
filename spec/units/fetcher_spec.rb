require 'spec_helper'

describe ThetvdbMapper::Fetcher do
  let(:model) { ThetvdbMapper::Fetcher.new(1) }

  describe '.series' do
    it 'should call series find' do
      model.stub_chain(:client, :series).and_return(double(find: true))
      model.client.series.should_receive(:find).with(1, mapping: true)

      model.series
    end
  end

  describe '.full_series' do
    it 'should call series find_full' do
      model.stub_chain(:client, :series).and_return(double(find_full: true))
      model.client.series.should_receive(:find_full).with(1, mapping: true)

      model.full_series
    end
  end

  describe '.actors' do
    it 'should call actor all' do
      model.stub_chain(:client, :actor).and_return(double(all: true))
      model.client.actor.should_receive(:all).with(1, mapping: true)

      model.actors
    end
  end

  describe '.banners' do
    it 'should call banner all' do
      model.stub_chain(:client, :banner).and_return(double(all: true))
      model.client.banner.should_receive(:all).with(1, mapping: true)

      model.banners
    end
  end

  describe '.episode' do
    it 'should call episode find_by_default_order' do
      model.stub_chain(:client, :episode).and_return(double(find_by_default_order: true))
      model.client.episode.should_receive(:find_by_default_order).with(1, 2, 3, mapping: true)

      model.episode(2, 3)
    end
  end

  describe '.client' do
    it 'should create ThetvdbApi::Client instance' do
      ThetvdbApi::Client.should_receive(:new)

      model.client
    end
  end
end
