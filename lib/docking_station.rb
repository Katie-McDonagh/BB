require_relative 'bike'
class DockingStation 

  attr_reader :bike

  def initialize
    @bike = Bike.new
  end

 def release_bike
  @bike
 end

 def dock(bike) 
  bike = @bike
 end

end