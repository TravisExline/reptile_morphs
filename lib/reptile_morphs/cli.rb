#CLI Controller
class ReptileMorphs::CLI

  def call
    puts "Take a Look at all the Different Reptiles for Sale!"
    list_morphs
    menu
    goodbye
  end

  def list_morphs
    @species = ReptileMorphs::Species.species
    @species.each.with_index(1) do |species, i|
      puts "#{i}: #{species.name}"
    end
  end

  def menu
    input = nil
    puts "Input which reptiles you would like more information on, or type exit to leave"
    while input != "exit"
      input = gets.strip

      if input.to_i > 0
        reptile_species = @species[input.to_i-1]
        puts "#{reptile_species.name}"
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
