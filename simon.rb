def board
  print "\n1 2\n3 4\n"
  "OO\nOO"
end

def clicked(char1,char2,char3,char4)
  print char1
  print char2
  puts
  print char3
  print char4
end

def rand_position
  num = rand(0..3)
  arr = ["O","O","O","O"]
  $turns << num
  arr[num] = "X"
  arr[0]+arr[1] + "\n" + arr[2] + arr[3]
end

$turns = Array.new
puts board
sleep(2)
puts rand_position
sleep(2)
puts rand_position
print("Input?")
input_turns = gets.chomp.to_i
print input_turns
print $turns

if input_turns != $turns
  print "Lost"
else "Won"
end
