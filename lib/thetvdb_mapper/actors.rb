class ThetvdbMapper::Actors < ThetvdbMapper::Base
  def data
    @data ||= fetcher.actors(id).body.map { |actor| map(actor) }
  end

  def map(data)
    mapping_object(data).map
  end

  def inspect
    "<ThetvdbMapper::Actors data=#{data.to_s} >"
  end

  def mapping_object(data)
    ThetvdbMapper::Mapping::Actor.new(data)
  end
end
