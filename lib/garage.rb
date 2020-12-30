require_relative 'vans'
require_relative 'bike'

class Garage

  attr_reader :bikes_to_fix, :working_bikes

  def initialize
    @bikes_to_fix = []
    @working_bikes = []
  end

  def fix_bikes
    @bikes_to_fix.each do |bike|
      bike.fix_bike
      @working_bikes.push(bike)
    end
  end

end