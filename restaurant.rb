require_relative 'chef'

class Restaurant
  attr_reader :name, :city, :chef
  attr_accessor :capacity

  def initialize(name, city, category, capacity, chef_name)
    @name = name
    @city = city
    @category = category
    @capacity = capacity
    @chef = Chef.new(chef_name, self)
    @clients = []
  end

  def open?
    Time.now.hour >= 18 && Time.now.hour <= 22
  end

  def closed?
    !open?
  end

  def book(client_name)
    @clients << client_name
  end

  def print_clients
    @clients.each do |client|
      puts "-#{client}"
    end
  end

  def self.categories
    %w[Italian Indian Thai French Chinese British]
  end

end

# mcdonalds = Restaurant.new("McDonalds", "London", "fast_food", 40)
# puts "#{mcdonalds.name} is in #{mcdonalds.city}"
#
# puts "#{mcdonalds.name} is #{mcdonalds.open? ? "open" : "closed"}"
# puts "#{mcdonalds.name} is #{mcdonalds.closed? ? "closed" : "open"}"

# mcdonalds.book('Ikenna')
# mcdonalds.print_clients

# puts Restaurant.categories.join(", ") # array of all the categories
