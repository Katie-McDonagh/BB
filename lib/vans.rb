require_relative 'docking_station'
require_relative 'bike'
#require to use the instance variable array of bikes to see wh
#ones are broken 
# does the van have to interact with the docking station at all?
# it only needs to know if a bike is broken or not, can it just go
# straight to the bike class instead?
class Van 

  attr_reader :broken_bikes

  def initialize
    @broken_bikes = []
  end

  def pick_up_bike(bike)
    @broken_bikes.push(bike)
  end

end

