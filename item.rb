class Item < Thing
  def initialize(x:, y:, map:)
    super(x: x, y: y, label: 'I', map: map)
  end
end