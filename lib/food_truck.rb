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

  def potential_revenue
    @inventory.sum do |item, amount|
      item.price * amount
    end
  end
end
