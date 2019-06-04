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

      if input.to_i > 0
        puts @species[input.to_i-1]
      elsif input == "reptiles"
        list_morphs
      else
        puts "Confused? Type reptiles or exit."
      end
    end
  end

  def goodbye
    puts "See you next time!"
  end
end
