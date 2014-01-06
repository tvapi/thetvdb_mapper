class ThetvdbMapper::Base
  attr_reader :id

  def initialize(id)
    @id = id
  end

  def fetcher
    @fetcher ||= ThetvdbMapper::Fetcher.new
  end
end
