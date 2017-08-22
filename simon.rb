def board
  print "\n1 2\n3 4\n"
  "OO\nOO"
end

def clicked(char1,char2,char3,char4)
  print char1 + char2
  puts
  print char3 + char4
end

def rand_position
  num = rand(0..3)
  arr = ["O","O","O","O"]
  $turns << num
  arr[num] = "X"
  arr[0]+arr[1] + "\n" + arr[2] + arr[3]
end

def winning(flag)
  if flag==1
    puts "Winner!!!!"
  else
    puts "You failed."
  end
end

while 1
  $turns = Array.new
  puts board
  sleep(2)
  puts rand_position
  sleep(2)
  puts rand_position
  sleep(2)
  print("Input?")

  flag = 1
  l = $turns.length
  puts l
  for i in 0..l-1
    input_turns = gets.chomp.to_i
    puts x = $turns[i]
    if input_turns != x
      flag = 0
      break
    end
  end

  winning(flag)
  if flag==0
    break
  end
end
