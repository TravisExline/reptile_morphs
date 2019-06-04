class ReptileMorphs::Species
  attr_accessor :type

  def self.species
    species_1 = self.new
    species_1.type = "Leopard Geckos"

    species_2 = self.new
    species_2.type = "Colubrids"

    species_3 = self.new
    species_3.type = "Ball Pythons"

    [species_1, species_2, species_3]
  end
end
