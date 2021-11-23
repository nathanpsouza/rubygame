require_relative 'character'

class Monster < Character
  def initialize(x:, y:, map:)
    super(x: x, y: y, label: 'M', map: map)
  end
end