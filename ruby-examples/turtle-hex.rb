require 'trtl'

# Example of using Trtl in a 'simple' interactive fashion

# In irb or pry this isn't needed as InteractiveTurtle will be
# included by default.

include InteractiveTurtle


k = 0
while k < 6
  j = 0
  while j < 2
      i = 0
      while i < 4
        left(60)
        forward(60)
        i = i + 1
        wait
      end
    right(60)
    forward(60)
    j = j + 1
    wait
  end
left(60)
forward(60)
k = k +1
wait
end

wait
