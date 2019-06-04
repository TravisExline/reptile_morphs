#CLI Controller
class ReptileMorphs::CLI

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
    @species = ReptileMorphs::Species.species
  end

  def menu

    input = nil
    puts "Input which reptiles you would like more information on, or type exit to leave"
    while input != "exit"
      input = gets.strip
      case input
      when "Leopard Geckos"
        puts "Which Leopard Gecko would you like more information on: Type reptiles to see the list of reptiles, or exit to leave."
      when "Colubrids"
        puts "Which Colubrids would you like more information on: Type reptiles to see the list of reptiles, or exit to leave."
      when "Ball Pythons"
        puts "Which Ball Python would you like more information on: Type reptiles to see the list of reptiles, or exit to leave."
      end
    end
  end

  def goodbye
    puts "See you next time!"
  end
end
