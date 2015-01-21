require 'trtl'

# Example of using Trtl in a 'simple' interactive fashion

# In irb or pry this isn't needed as InteractiveTurtle will be
# included by default.

include InteractiveTurtle

k = 0
j = 0
i = 0

puts "loop k"
k = gets.to_i
puts "loop j"
j = gets.to_i
puts "loop i"
i = gets.to_i


kl = 0
while kl < k

  jl = 0
  while jl < j
    right(60)
    forward(60)
    jl = jl + 1

    il = 0
    while il < i
      left(60)
      forward(60)
      il = il + 1
    end

  end

left(60)
forward(60)
kl = kl + 1
end

wait
