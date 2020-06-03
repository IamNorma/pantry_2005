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

  def enough_ingredients_for?(recipe)
    @stock.all? do |ingredient, amount_in_stock|
      recipe.ingredients_required.all? do |required_ingredient, required_amount|
        required_ingredient == ingredient &&
        amount_in_stock >= required_amount
      end
      binding.pry
    end
  end
end
