require "docking_station.rb"
require "bike.rb"

describe DockingStation do

  let(:docking_station) {DockingStation.new}

  it "allows users to set capacity" do
    num = 5
    station = DockingStation.new(num)
    expect(station.capacity).to eq num
  end

  it "starts with 20 as a default capacity" do
    expect(docking_station.capacity).to eq 20
  end

  it "gets a bike and expects it to be working" do
    bike = Bike.new
    docking_station.dock(bike)
    bike = docking_station.release_bike
    expect(bike).to be_working
  end

describe "#dock" do
  it "won't dock a bike if full" do
    docking_station.capacity.times { docking_station.dock Bike.new }
    expect{docking_station.dock(Bike.new)}.to raise_error("Docking station is full")
  end
end

  describe "#release_bike" do
    it "can release a bike if there is a bike available" do
      bike = Bike.new
      docking_station.dock(bike)
      expect(docking_station.release_bike).to eq bike
    end

    it "won't release a bike if there are none available" do
      expect{(docking_station.release_bike)}.to raise_error("No bikes available")
    end
  end
end
