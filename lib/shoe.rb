class Shoe
  attr_accessor :color, :size, :material, :condition

  BRANDS = []

  def initialize(brand)
    @brand = brand
    if !BRANDS.any? {|i| i == brand}
      BRANDS << brand
    end
  end

  def brand=(brand)
    @brand = brand
  end

  def self.brand
    BRANDS.uniq
  end

  def cobble
    self.condition = "new"
    puts "Your shoe is as good as new!"
  end

end