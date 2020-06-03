class Pantry
  attr_reader :stock

  def initialize
    @stock = Hash.new(0)
  end

  def stock_check(ingredient1)
    @stock[ingredient1]
  end

  def restock(ingredient, amount)
    @stock[ingredient] += amount 
  end
end
