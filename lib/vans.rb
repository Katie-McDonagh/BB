require_relative 'docking_station'
require_relative 'bike'
require_relative 'garage'
class Van 

  attr_reader :broken_bikes, :fixed_bikes

  def initialize
    @broken_bikes = []
    @fixed_bikes = []
  end

  def pick_up_bike(array_of_bikes)
    array_of_bikes.each do |bike|
      if bike.broken? 
        @broken_bikes.push(bike)
    else
      @fixed_bikes.push(bike)
    end
  end

  def drop_off_bikes(garage)
    #if bike is broken
    @broken_bikes.each do |bike|
      garage.bikes_to_fix.push(bike)
      @broken_bikes.delete(bike)
    end

    #else dock the bikes at the docking station
  end
end

end
