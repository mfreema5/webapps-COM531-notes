class Car
  #brand
  #color
  #horsepower
  #type(sedan, SUV, compact)
  Wheels = 4

  def self.num_wheels
    Wheels
  end

  def initialize(color='blue')
    @color = color
    puts "You've called a #{color} car into existance."
  end

  def color
    @color
  end

  def color=(color)
    @color
  end

end
