require_relative 'fast_food'
require_relative 'gastro'

burger_king = FastFood.new("Burger King", "Paris", "burgers", 50, 5)
cecconis = Gastro.new("Cecconis", "London", "Italian", 100, 2)

cecconis.book("Catherine")
burger_king.book("Sarah")
burger_king.print_clients

cecconis.print_clients
