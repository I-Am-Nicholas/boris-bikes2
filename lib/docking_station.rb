require_relative 'bike'

class DockingStation
  attr_accessor :docked_bikes

  DEFAULT_CAPACITY = 20

  def initialize
    @docked_bikes = []
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
