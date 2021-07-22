require_relative 'restaurant'

class Gastro < Restaurant

  def initialize(name, city, category, capacity, stars)
    super(name, city, category, capacity)
    @stars = stars
  end

  def print_clients
    puts "You don't have permission to view the list!"
  end

  def capacity
    if Time.now.hour >= 19
      @capacity + 30
    else
      @capacity
    end
  end

end
