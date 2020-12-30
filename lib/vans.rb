require_relative 'docking_station'
require_relative 'bike'
class Van 

  attr_reader :broken_bikes

  def initialize
    @broken_bikes = []
  end

  def pick_up_bike(array_of_bikes)
    array_of_bikes.each do |bike|
      if bike.broken? 
        @broken_bikes.push(bike)
      end
  end
end

end
