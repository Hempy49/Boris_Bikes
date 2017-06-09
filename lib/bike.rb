class Bike

  def initialize
    @condition = :working
  end

  def working?
    @condition == :working
  end

def report_broken
  @condition = :broken 
end

def broken?
  @condition == :broken
end

end
