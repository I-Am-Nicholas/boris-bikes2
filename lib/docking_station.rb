require_relative 'bike'

class DockingStation
  attr_accessor :docked_bikes, :capacity

  DEFAULT_CAPACITY = 20

  def initialize(capacity = DEFAULT_CAPACITY)
    @docked_bikes = []
    @capacity = capacity
  end

  def release_bike #starts empty!
    fail "No bikes available!" if empty?
    @docked_bikes.shift
  end

  def dock(bike)
    fail "Docking Station Full!" if full?
    @docked_bikes << bike
    @docked_bikes.last
  end

  private

  def full?
    @docked_bikes.length >= DEFAULT_CAPACITY
  end

  def empty?
    @docked_bikes.empty?
  end


end
