#Make variables for scores
total_score = 0
room_points = {
    1 => 5,
    2 => 10,
    3 => 15
}

#Starting message
puts "Welcome to the Adventure Game!"
puts "You have #{total_score} points."


loop do

    #Get input
    puts "Choose a room (1-3) to enter or 'exit' to end the game:"
    input = gets.chomp.downcase
  
    case input

    #Stop the game with exit
    when 'exit'
        puts "Game over! You collected a total of #{total_score} points."
        break

    #Change score according to assigned option chosen
    when '1', '2', '3'
      room = input.to_i
      points = room_points[room]
      total_score += points
      puts "You entered Room #{room} and earned #{points} points."
      puts "You now have #{total_score} points."

    #Handle wrong answers
    else
      puts "Invalid input. Please enter '1', '2', '3', or 'exit'."
    end
  end