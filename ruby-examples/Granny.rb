while true
  puts "Say to Grandma..."
  said = gets.chomp

  if said == "BYE"
    break
  elsif said == "Bye"
    break
  elsif said =="bye"
    break
  end

  if said.downcase.swapcase == said
    year = 1930+rand(21)
    puts "NO, NOT SINCE #{year.to_s}!"
  else
    puts 'HUH?!  SPEAK UP, SONNY!'
  end
end

