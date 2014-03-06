class Pizza
  attr_accessor :toppings
  def initialize(toppings=nil)
    @toppings = toppings
    if @toppings==nil
      @toppings = [Topping.new("cheese", vegetarian=true)]
    end
  end

  def vegetarian
    @toppings.all? {|x| x.vegetarian}
  end

end

class Topping
  attr_accessor :name, :vegetarian
  def initialize(name, vegetarian=false)
    @name = name
    @vegetarian = vegetarian

  end
end
