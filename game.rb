class Game
  def initialize(printer)
    @printer = printer
    @printer.green 'inicializando'
  end

  def run
    @printer.red 'rodando o jogo'
  end
end