require 'trtl'

# Example of using Trtl in a 'simple' interactive fashion

# In irb or pry this isn't needed as InteractiveTurtle will be
# included by default.

include InteractiveTurtle


j = 0
while j < 6
  right(60)
  forward(60)
  j = j + 1
  wait

  i = 0
  while i < 6
    left(60)
    forward(60)
    i = i + 1
  end

end

wait
