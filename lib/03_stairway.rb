def rollDice
  rand(1..6)
end

def move
  position = 10
  stair = 0

  while stair < position
    diceValue = rollDice
    case diceValue
      when 1
        stair -= 1
        puts "Vous avez fais #{diceValue}, vous descendez d'une marche..."
      when (5..6)
        stair += 1
        if stair > 0
          puts "Vous avez fais #{diceValue}, vous avancez et vous positionnez sur la marche #{stair} !"
        else
          puts "Vous restez à contempler l'escalier, d'en bas..."
        end
      else (2..4)
        if stair > 0
          puts "Vous avez fais #{diceValue}, vous restez sur la marche #{stair}"
        else
          puts "Vous restez à contempler l'escalier, d'en bas..."
        end
    end
  end
end

def congrats
  puts ""
  puts "   Félicitations, vous êtes arrivé en haut  "
  puts "" 
end

def perform
  move
  congrats
end

perform