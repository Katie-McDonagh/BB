require_relative 'bike'
require_relative 'vans'
class DockingStation 

  DEFAULT_CAPACITY = 20

  attr_reader :capacity, :bikes

  def initialize(capacity = DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
  end

 def release_bike
  raise 'No bikes available' if empty? || @bikes.last.broken?
  @bikes.pop
 end

 def dock(bike)
  raise 'Docking Station full' if full?
  @bikes << bike
  @bikes[-1]
 end

 private

 def full?

  @bikes.count >= capacity

 end

 def empty?
  @bikes.empty?
 end

end