require 'rainbow'

class ScreenPrinter
  def red(str)
    puts Rainbow(str).red
  end

  def green(str)
    puts Rainbow(str).green
  end
end
