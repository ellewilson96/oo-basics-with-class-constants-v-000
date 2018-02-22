class Shoe
  attr_accessor :color, :size, :material, :condition
  attr_reader :brand

  BRANDS = []

  def initialize(brand)
    @brand = brand
    BRANDS << brand
    counts = Hash.new(0)
    BRANDS.each { |label| counts[label] += 1 }
  end

  def cobble
    self.condition = "new"
    puts "Your shoe is as good as new!"
  end

end
