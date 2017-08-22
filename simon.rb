class Simon
  def board
    "⬛⬛\n⬛⬛"
  end

  def clicked(char1,char2,char3,char4)
    # char1,char2,char3 = "⬛","⬛","⬛"
    # char4 = "🔴"
    print char1
    print char2
    puts
    print char3
    print char4
  end

  def rand_position
    rand(1..4)
  end
end


game = Simon.new
puts game.board

puts game.clicked
