


Next week: Rails overview & tech support

Academic resource desk can give access to GeeGawLab

```ruby
[arrayname].each do |member|
  puts member + ' is old.'
end
```

`{:name => 'Dan'}`
`{name: 'Dan'}`


&ldquo;`mystring = "Whatever"`&rdquo; vs. &ldquo;`mystring = String.new("Whatever")`&rdquo;

```
@car = ./car.rb

@car.class
=> Car

@car.class.superclass
=> Object
```

----

&ldquo;`car.rb`&rdquo;:

```ruby
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
```

Using it:

```
$ irb

2.2.0 :001 > load './car.rb'
 => true 

2.2.0 :002 > @car1 = Car.new
You've called a blue car into existance.
 => #<Car:0x000000007a3370 @color="blue"> 

2.2.0 :003 > @car2 = Car.new('red')
You've called a red car into existance.
 => #<Car:0x0000000079c3e0 @color="red"> 
```


hashes & iteration 




