class ReptileMorphs::Species
  attr_accessor :name

  def self.species
    species_1 = self.new
    species_1.name = "Leopard Geckos"

    species_2 = self.new
    species_2.name = "Colubrids"

    species_3 = self.new
    species_3.name = "Ball Pythongs"

    [species_1, species_2, species_3]
  end
end
