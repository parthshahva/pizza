class Pizza
end

class Topping
  attr_reader :name, :vegetarian
  def initialize(name, vegetarian=true)
    @name = name
    @vegetarian = vegetarian

  end
end
