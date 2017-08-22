def board
  # creates initial board
  print "\n1 2\n3 4\n"
  "OO\nOO"
end

def clicked(char1,char2,char3,char4)
  # print the board with the changed symbol
  print char1 + char2
  puts
  print char3 + char4
end

def rand_position
  num = rand(0..3) # generates the position of the number
  arr = ["O","O","O","O"] # default array
  $turns << num
  arr[num] = "X" # symbol we print when there is a change
  arr[0]+arr[1] + "\n" + arr[2] + arr[3] # returns formatted array
end

def winning(flag)
  # prints who wins depending on the state of the flag
  if flag==1
    puts "Winner!!!!"
  else
    puts "You failed."
  end
end

def increment_moves
  # gets new random position
  sleep(2) # waits 2 seconds
  puts rand_position
end

moves = 0

while 1
  $turns = Array.new # creates new array
  puts board
  flag = 1
  for i in 0..moves
    increment_moves # get new move
  end
  moves += 1
  sleep(2)
  print("Input?")

  for i in 0...$turns.length 
    input_turns = gets.chomp.to_i
    puts x = $turns[i]
    if input_turns != x # checks if entered move is different from output
      flag = 0
      break
    end
  end

  winning(flag)
  if flag==0 # end infinite loop
    break
  end
end
