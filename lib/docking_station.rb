require_relative 'bike'

class DockingStation
  attr_accessor :bike

  def release_bike #starts empty!
#    fail "No bikes available!!" unless @bike #guard condition
    @bike
  end

  def dock(bike) #default state == empty
    fail "Dock Full!!" if @bike #guard condition
    @bike = bike
  end

end
