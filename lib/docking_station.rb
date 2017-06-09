require "./lib/bike.rb"

class DockingStation
  attr_reader :bikes, :capacity


  def initialize(capacity = 20)
    @bikes = []
    @capacity = capacity
  end

  def release_bike
    raise "No bikes available" if empty?
    @bikes.pop unless @bikes.last.broken?    
  end


  def dock(bike)
    raise "Docking station is full" if full?
    @bikes << bike
  end

private

  def full?
    @bikes.count >= capacity
  end

  def empty?
    @bikes.empty?
  end

end
