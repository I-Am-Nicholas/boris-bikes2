require 'docking_station'

describe DockingStation do

  it "responds to release_bike" do
    expect(subject).to respond_to :release_bike
  end

  it "it releases a working bike" do #10
    bike = subject.release_bike
    expect(bike).to be_working
  end

  it { is_expected.to respond_to(:dock).with(1).argument }

  it { is_expected.to respond_to(:bike)}

  it "docks a bike" do
    bike = Bike.new
    expect(subject.dock(bike)).to eq(bike)
  end

  it "returns bike if docked" do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bike).to eq(bike)
  end

  it "releases a bike" do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.release_bike).to eq bike
  end

#=begin
  describe "#release_bike" do #13
    it "raises an error if no bikes available" do
  #    bike = Bike.new
  #    subject.dock(bike)
      expect{ subject.release_bike }.to raise_error "No bikes available!"
    end
  end
#=end

=begin
  describe "#dock(bike)" do
    it "raises an error if dock full" do
      bike = Bike.new
      subject.dock(bike)
      expect{subject.dock(bike)}.to raise_error "Dock Full!"
    end
  end
=end

end
