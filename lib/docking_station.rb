require_relative "bike.rb"

class DockingStation
  attr_reader :bikes
  DEFAULT_CAPACITY = 20

  def initialize
    @bikes = Array.new
  end


  def release_bike
    raise 'No bikes left' if empty?
    @bikes.pop
  end

  def dock(bike)
    raise "Docking Station is full" if full?
    @bikes.push(bike)
    bike.docked = true
    @bike = bike # remove in future?
  end


private
  def full?
    @bikes.length >= DEFAULT_CAPACITY
  end

  def empty?
    @bikes.empty?
  end
end
