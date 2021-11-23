class Thing
  attr_accessor :x, :y, :label
  def initialize x:, y:, label:, map:
    @x = x
    @y = y
    @label = label
    @map = map

    @map.insert_into self
  end
end