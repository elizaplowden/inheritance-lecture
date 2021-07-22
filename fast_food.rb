require_relative 'restaurant'

class FastFood < Restaurant
  def initialize(name, category, capacity, prep_time)
    super(name, nil, category, capacity)
    @prep_time = prep_time
  end

  def open?
    super() || Time.now.hour >= 12 && Time.now.hour <= 14
  end
end
