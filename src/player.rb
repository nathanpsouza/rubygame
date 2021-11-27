require_relative 'character'

class Player < Character
  def initialize(x:, y:, map:)
    super(x: x, y: y, label: 'P', map: map)
  end
end