class Map
  def initialize(width: 10, height: 10)
    @width = width
    @height = height
    @things = []

    initialize_map
  end

  def insert_into(thing)
    @things << thing
  end

  def print_map
    map_to_print = @map.each_with_index.map do |i, l_idx|
      cols = i.each_with_index.map do |i2, c_idx|
        
        thing = @things.select do |thing|
          thing.x == l_idx + 1 && thing.y == c_idx + 1
        end.first

        "[#{thing.nil? ? ' ' : thing.label}]"
      end.join('')
    end

    puts map_to_print
    puts "============"
  end
  
  def check_boundaries(x:, y:)
    x <= @width && x > 0 && y <= @height && y > 0
  end

  private
  def initialize_map
    @map = Array.new @height
    @map.map! do |item|
      Array.new @width
    end
  end
end