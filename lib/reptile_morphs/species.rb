class ReptileMorphs::Species
  attr_accessor :type, :morph, :price

  def self.species
    self.scrape_reptiles
  end

  def self.scrape_reptiles
    reptiles = []

    reptiles << self.scrape_geckos
    reptiles << self.scrape_colubrids
    reptiles << self.scrape_pythons

    reptiles
  end

  def self.scrape_geckos
    doc = Nokogiri::HTML(open("https://bhbreptiles.com/collections/leopard-geckos"))
    type = doc.search("h1.section-header--title")
    #price = doc.search("div.product-item--price".).text RETURNS ALL PRICES

    binding.pry
  end
end
