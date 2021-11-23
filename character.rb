require_relative 'thing'

class Character < Thing
  def initialize(x:, y:, label:, map:)
    super(x: x, y: y, label: label, map: map)
  end

  def move_to(movement: )
    x_direction = 0
    y_direction = 0

    case movement
    when 'ml'
      y_direction = -1
    when 'mr'
      y_direction = 1
    when 'mu'
      x_direction = -1
    when 'md'
      x_direction = 1
    end

    new_x_position = @x + x_direction
    new_y_position = @y + y_direction

    if @map.check_boundaries(x: new_x_position, y: new_y_position)
      @x = new_x_position
      @y = new_y_position
    end
  end
end