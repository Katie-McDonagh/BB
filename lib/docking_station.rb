require_relative 'bike'
class DockingStation 

  DEFAULT_CAPACITY = 20

  attr_reader :bikes, :capacity

  def initialize(capacity = DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
  end

 def release_bike
  raise 'No bikes available' if empty?
  @bikes.pop
 end

 def dock(bike)
  raise 'Docking Station full' if full?
  @bikes << bike
  @bikes[-1]
 end

 private

 def full?

  @bikes.count >= DEFAULT_CAPACITY

 end

 def empty?
  @bikes.empty?
 end

end