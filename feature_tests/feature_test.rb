require './lib/docking_station'
require './lib/bike'

docking_station = DockingStation.new(50)

p docking_station


=begin
docking_station = DockingStation.new

20.times { docking_station.dock(Bike.new) }

puts "I just docked 20 bikes"

puts "Here they are: #{docking_station.docked_bikes}"

docking_station.dock(Bike.new)

puts "I just docked 1 more"
=end
