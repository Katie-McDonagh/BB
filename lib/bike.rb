class Bike

  def report_broken
    @broken = true
  end

  def working?
     @broken == false ? true : false
  end

  def broken?
    @broken
  end

end