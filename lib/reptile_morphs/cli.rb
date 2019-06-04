#CLI Controller
class ReptileMorphs::CLI
  puts "Hello world"

  def call
    puts "Take a Look at all the Different Reptiles for Sale!"
    list_morphs
    menu
    goodbye
  end

  def list_morphs
    #gets morphs
    puts <<-DOC.gsub /^\s*/, ''
    1. Leopard Geckos
    2. Colubrids
    3. Ball Pythons
    DOC
    @morphs = ReptileMorphs::Morph.all
  end

  def menu
    leo_morphs = ["Baldy", "Eclipse", "Super Snow"]
    colubrid_types = ["Corn Snakes", "King Snakes", "Milk Snakes"]
    ball_morphs = ["Banana", "Enchi", "Pie-Bald", ]

    baldy_leos = ["Hypo Tangerine Baldy", "Super Hypo Tangerine Baldy W/Y", "Super Hypo Tangerine Carrot Tail Baldy"]
    eclipse_leos = ["25% Pastel Super Hypo Mack Snow W/Y Eclipse Tremper Albino", "25% Pastel Super Hypo W/Y Het Ecplipse"]
    snow_leos = ["Hi White Super Raptor", "Albino Tremper Super Snow Murphy Patternless"]

    corn_snakes = ["Scaleless", "Scaleless Creamsicle"]
    king_snakes = ["Albino Brooks", "Blotched"]
    milk_snakes = ["Albino Honduran", "Albino Nelsons"]

    banana_balls = ["Banana", "Banana Fire Fly", "Banana Pewter"]
    enchi_balls = ["Banana Enchi", "Super Enchi"]

    input = nil
    puts "Input which reptiles you would like more information on, or type exit to leave"
    while input != "exit"
      input = gets.strip
      case input
      when "Leopard Geckos"
        puts "Which Leopard Gecko would you like more information on: #{leo_morphs.join(", ")}   Type reptiles to see the list of reptiles, or exit to leave."
        leo_input = gets.strip
        case leo_input
        when "reptiles"
          list_morphs
          puts "Input which reptiles you would like more information on, or type exit to leave"
        when "Baldy"
          puts "Now just to pick one! #{baldy_leos.join(", ")}   Type reptiles to see the list of reptiles or exit to leave."
          baldy_input = gets.strip
          case baldy_input
          when "reptiles"
            list_morphs
            puts "Input which reptiles you would like more information on, or type exit to leave"
          when "Hypo Tangerine Baldy"
            puts "Info on this morph..."
          when "Super Hypo Tangerine Baldy W/Y"
            puts "Info on this morph..."
          when "Super Tangerine Carrot Tail Baldy"
            puts "Info on this morph..."
          end

        when "Eclipse"
          puts "Now just to pick one! #{eclipse_leos.join(", ")}   Type reptiles to see the list of reptiles, or exit to leave."
          eclipse_input = gets.strip
          case eclipse_input
          when "reptiles"
            list_morphs
            puts "Input which reptiles you would like more information on, or type exit to leave"
          when "25% Pastel Super Hypo Mack Snow W/Y Eclipse Tremper Albino"
            puts "Info on this morph..."
          when "25% Pastel Super Hypo W/Y Het Eclipse"
            puts "Info on this morph..."
          end

        when "Super Snow"
          puts "Now just to pick one! #{snow_leos.join(", ")}   Type reptiles to see the list of reptiles, or exit to leave."
          snow_input = gets.strip
          case snow_input
          when "reptiles"
            list_morphs
            puts "Input which reptiles you would like more information on, or type exit to leave"
          when "Hi White Super Raptor"
            puts "Info on this morph..."
          when "Albino Tremper Super Snow Murphy Patternless"
            puts "Info on this morph..."
          end
        end

      when "Colubrids"
        puts "Which Colubrids would you like more information on: #{colubrid_types.join(", ")}   Type reptiles to see the list of reptiles, or exit to leave."
        colubrid_input = gets.strip
        case colubrid_input
        when "reptiles"
          list_morphs
          puts "Input which reptiles you would like more information on, or type exit to leave"
        when "Corn Snakes"
          puts "Now just to pick one! #{corn_snakes.join(", ")}   Type reptiles to see the list of reptiles, or exit to leave."
          corn_input = gets.strip
          case corn_input
          when "reptiles"
            list_morphs
            puts "Input which reptiles you would like more information on, or type exit to leave"
          when "Scaleless"
            puts "Info on this snake..."
          when "Scaleless Creamsicle"
            puts "Info on this snake..."
          end

        when "King Snakes"
          puts "Now just to pick one! #{corn_snakes.join(", ")}   Type reptiles to see the list of reptiles, or exit to leave."
          king_input = gets.strip
          case king_input
          when "reptiles"
            list_morphs
            puts "Input which reptiles you would like more information on, or type exit to leave"
          when "Albino Brooks"
            puts "Info on this snake..."
          when "Blotched"
            puts "Info on this snake..."
          end

        when "Milk Snakes"
          puts "Now just to pick one! #{corn_snakes.join(", ")}   Type reptiles to see the list of reptiles, or exit to leave."
          milk_input = gets.strip
          case milk_input
          when "reptiles"
            list_morphs
            puts "Input which reptiles you would like more information on, or type exit to leave"
          when "Albino Honduran"
            puts "Info on this snake..."
          when "Albino Nelsons"
            puts "Info on this snake"
          end
        end

      when "Ball Pythons"
        puts "Which Ball Python would you like more information on: #{ball_morphs.join(", ")}   Type reptiles to see the list of reptiles, or exit to leave."
        ball_input = gets.strip
        case ball_input
        when "reptiles"
          list_morphs
          puts "Input which reptiles you would like more information on, or type exit to leave"
        when "Banana"
          puts "Now just to pick one! #{banana_balls.join(", ")}   Type reptiles to see the list of reptiles, or exit to leave."
          banana_input = gets.strip
          case banana_input
          when "reptiles"
            list_morphs
            puts "Input which reptiles you would like more information on, or type exit to leave"
          when "Banana"
            puts "Info on this snake..."
          when "Banana Fire Fly"
            puts "Info on this snake..."
          when "Banana Pewter"
            puts "Info on this snake..."
          end

        when "Enchi"
          puts "Now just to pick one! #{enchi_balls.join(", ")}   Type reptiles to see the list of reptiles, or exit to leave."
          enchi_input
          case enchi_input
          when "reptiles"
            list_morphs
            puts "Input which reptiles you would like more information on, or type exit to leave"
          when "Banana Enchi"
            puts "Info on this snake..."
          when "Super Enchi"
            puts "Info on this snake..."
          end

        when "Pie-Bald"
          puts "All sold out, sorry!"
          list_morphs
          puts "Input which reptiles you would like more information on, or type exit to leave"
        end
      end
    end
  end

  def goodbye
    puts "See you next time!"
  end
end
