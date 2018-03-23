require_relative 'bike'

class DockingStation

  attr_reader :bike
  attr_reader :collection
  DEFAULT_CAPACITY = 20
  def initialize
    @collection = []
  end

  def release_bike
    fail 'No bike available' ifc empty?
    Bike.new
    @collection.pop
  end

  def dock(bike)
    fail "Docking station is full" if full?
    @collection << bike

  end

  private
  def full?
    @collection.count == DEFAULT_CAPACITY
  end

  def empty?
    @collection.empty?
  end

end

# station = DockingStation.new
# p 19.times { station.dock Bike.new }
# p @collection
