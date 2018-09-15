class Order
  attr_reader :summary, :menu

  def initialize(menu = Menu.new)
    @summary = Hash.new(0)
    @menu = menu
  end

  def add(dish, quantity)
    message = 'That dish is not on the menu. Please choose another one!'
    fail message unless menu.on_menu?(dish)
    order = { name: dish.name, price: dish.price }
    @summary[order] += quantity
  end
end
