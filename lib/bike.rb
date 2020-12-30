class Bike

  attr_reader :broken

  def initialize
    @broken = false
  end

  def report_broken
    @broken = true
  end

  def working?
     @broken == false ? true : false
  end

  def fix_bike
    @broken = false
  end

  # def broken?
  #   @broken
  # end

end