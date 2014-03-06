require './pizza'

describe Pizza do
  it "exists" do
    expect(Pizza).to be_a(Class)
  end
  describe '.initialize' do
    it 'records all of the toppings' do
      toppings = [
        Topping.new('mushrooms', vegetarian: true),
        Topping.new('pepperoni')
      ]
      pizza = Pizza.new(toppings)

      expect(pizza.toppings).to eq(toppings)
    end
      it 'defaults the toppings to cheese only, if the pizza has no toppings' do
      pizza = Pizza.new

      expect(pizza.toppings.count).to eq(1)
      expect(pizza.toppings.first.name).to eq('cheese')
      end
      it 'tests if a pizza is vegetarian' do
        toppings = []
        pepperoni = Topping.new("pepperoni", vegetarian=false)
        cheese = Topping.new("cheese", vegetarian=true)
        toppings.push(pepperoni)
        toppings.push(cheese)
        pizza = Pizza.new(toppings)
        expect(pizza.vegetarian).to eq(false)
      end
      it 'tests if cheese pizza is vegetarian' do
          pizza = Pizza.new
          expect(pizza.vegetarian).to eq(true)
      end
  end
end

describe Topping do
  it "exists" do
    expect(Topping).to be_a(Class)
  end

  describe '.initialize' do
    it "sets the name of topping" do
      topping = Topping.new('olives')

      expect(topping.name).to eq('olives')
    end
        it 'sets whether or not the topping is vegetarian' do
        topping = Topping.new('bell peppers', vegetarian=true)

         expect(topping.vegetarian).to eq(true)
        end

    end
end

