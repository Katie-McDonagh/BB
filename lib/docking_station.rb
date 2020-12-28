require_relative 'bike'
class DockingStation 

  attr_reader :bikes

 def release_bike
  raise 'No bikes available' unless @bikes
  @bikes
 end

 def dock(bike)
  raise 'Docking Station full' if @bikes
  @bikes = bike
 end

end