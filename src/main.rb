require 'bundler'
Bundler.require

require 'rainbow'

require_relative 'player'
require_relative 'monster'
require_relative 'item'
require_relative 'map'
require_relative 'game'
require_relative 'screen_printer'

class ScreenPrinterWithYellow < ScreenPrinter

  def initialize
    super
  end

  def yellow(str)
    puts Rainbow(str).yellow
  end

end

printer = ScreenPrinterWithYellow.new

Game.new(printer).run

map = Map.new(width:10, height:10)

player = Player.new(x: 2, y: 3, map: map)

monster1 = Monster.new(x: 3, y: 9, map: map)
monster2 = Monster.new(x: 7, y: 3, map: map)
monster3 = Monster.new(x: 10, y: 5, map: map)

item1 = Item.new(x: 2, y: 9, map: map)
item2 = Item.new(x: 6, y: 3, map: map)
item3 = Item.new(x: 9, y: 5, map: map)

map.print_map

while(command = gets.chomp)
  if ['mu', 'md', 'mr', 'ml'].include?(command)
    player.move_to(movement: command)
  end

  if command == 'q'
    puts 'Até mais guerreiro'
    exit 
  end

  map.print_map
end
