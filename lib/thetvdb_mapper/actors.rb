class ThetvdbMapper::Actors < ThetvdbMapper::Base
  def data
    @data ||= fetcher.actors(id).body.map { |actor| map(actor) }
  end

  def map(data)
    ThetvdbMapper::Mapping::Actor.map(data)
  end

  def inspect
    "<ThetvdbMapper::Actors data=#{data.to_s} >"
  end
end
