require_relative 'bike'

class DockingStation
  attr_accessor :capacity, :docked_bikes

  def initialize
    @capacity = 20
    @docked_bikes = []
  end

  def release_bike #starts empty!
    fail "No bikes available!" if @docked_bikes.empty? #guard condition
    @docked_bikes.shift
  end

  def dock(bike)
    fail "Docking Station Full!" if @docked_bikes.length >= @capacity #guard condition
    @docked_bikes << bike
    @docked_bikes.last
  end

end
