class Location

  def initialize(name)
    @name = name
  end

  def name
    @name
  end

  def name=(name)
    @name = name
  end

end

class Trip < Location

  @@trip = []

  def self.create(name)
    new_location = Location.new(name)
    @@trip << new_location
    return new_location
  end

  def self.trip
    @@trip
  end

  def self.list_of_locations
    puts "Began trip."

    @@trip.each_cons(2) do |location|
      
      puts "Travelled from #{location} to #{location}"
    end

    puts "Ended Trip."

  end

end

Trip.create('Toronto')
Trip.create('Ottawa')
Trip.create('Montreal')
Trip.create('Quebec City')
Trip.create('Halifax')
Trip.create('St. Johns')

puts Trip.list_of_locations

# every time it's the 2nd destination, we travel from there.
