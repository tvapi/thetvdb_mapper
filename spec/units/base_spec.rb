require 'spec_helper'

class ExampleClass < ThetvdbMapper::Base
end

describe ThetvdbMapper::Base do
  let(:model) { ExampleClass.new(1) }

  describe '.fetcher' do
    it 'should call map' do
      ThetvdbMapper::Fetcher.should_receive(:new)
      model.fetcher
    end
  end
end
