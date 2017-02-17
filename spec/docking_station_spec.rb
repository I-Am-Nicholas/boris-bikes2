require 'docking_station'

describe DockingStation do
  it { is_expected.to respond_to(:release_bike) }

  it { is_expected.to respond_to(:dock).with(1).argument }

  it { is_expected.to respond_to(:docked_bikes) }

  it "can hold a number of bikes" do
    expect(subject.docked_bikes).to be_an_instance_of Array
  end

  it "has a default capacity which is a number" do
    expect(DockingStation::DEFAULT_CAPACITY).to be_an_instance_of Fixnum
  end

  it "Sets the default capacity correctly" do
    expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
  end


  describe "#release_bike" do
    it "it releases a working bike" do #10
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to be_working
    end

    it "releases a bike" do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end

    it "raises an error if no bikes available" do
      expect{ subject.release_bike }.to raise_error "No bikes available!"
    end
  end

  describe "#dock(bike)" do
    it "docks a bike" do
      bike = Bike.new
      expect(subject.dock(bike)).to eq(bike)
    end

    it "raises an error if dock full" do
      bike = Bike.new
      DockingStation::DEFAULT_CAPACITY.times { subject.dock(bike) }
      expect{subject.dock(bike)}.to raise_error "Docking Station Full!"
    end
  end






end
