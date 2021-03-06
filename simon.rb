def board
  # creates initial board
  print "\n0 1\n2 3\n"
  "OO\nOO"
end

$all = Array.new

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
  $all << arr
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
  system "clear" or system "cls"
  puts rand_position
end

moves = 0
$turns = Array.new # creates new array
while 1
  puts board
  $all.each{|x|
    sleep(2)
    system "clear" or system "cls"
    puts x[0] + x[1] + "\n" + x[2] + x[3]
  }
  increment_moves # get new move
  sleep(2)
  system "clear" or system "cls"
  print("Input?")

  flag = 1
  for i in 0...$turns.length
    input_turns = gets.chomp.to_i
    x = $turns[i]
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
