class FoodTruck
  attr_reader :name,
              :inventory

  def initialize(name)
    @name = name
    @inventory = {}
  end

  def check_stock(item)
    if @inventory[item].nil?
      0
    else
      @inventory[item]
    end
  end

  def stock(item, amount)
    if @inventory[item].nil?
      @inventory[item] = amount
    else
      @inventory[item] = @inventory[item] + amount
      # require "pry"; binding.pry
    end
  end
end
