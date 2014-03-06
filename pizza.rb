class Pizza
  attr_accessor :toppings
  def initialize(toppings=nil)
    @toppings = toppings
    cheese = Topping.new("cheese", vegetarian=true)
    if @toppings==nil
      @toppings = [cheese]
    end
  end
end

class Topping
  attr_accessor :name, :vegetarian
  def initialize(name, vegetarian=false)
    @name = name
    @vegetarian = vegetarian

  end
end
