require 'vans'

describe Van do

  let(:bike) { double :bike }
  let(:docking_station) { double :docking_station }

  it "is passed broken bikes by the docking station" do
    bike = double(:bike, broken: true)
    # docking_station = double(:docking_station, bikes: [bike])
    bikes = [bike]
    subject.pick_up_bike(bikes)
    expect(subject.broken_bikes).to include(bike)
  end

  describe "#drop_off_bikes" do
  it "drops off an array of broken bikes" do
    bike = double(:bike, broken: true)
    bikes = [bike]
    subject.pick_up_bike(bikes)
    garage = double(:garage)
    allow(garage).to receive(:bikes_to_fix) { [] }
    subject.drop_off_bikes(garage)
    expect(subject.broken_bikes).to be_empty
  end

  it "dropping off a bike pushes it to a garage's bike's to fix array" do
    bike = double(:bike, broken: true)
    bikes = [bike]
    subject.pick_up_bike(bikes)
    garage = double(:garage)
    test_array = []
    allow(garage).to receive(:bikes_to_fix) { test_array }
    expect(garage.bikes_to_fix).to receive(:push).with(bike)
    subject.drop_off_bikes(garage)
  end


  end

  it "pick up working bikes from the garage" do
    bike = double(:bike, broken: false)
    working_bikes = [bike]
    subject.pick_up_bike(working_bikes)
    expect(subject.fixed_bikes).to include(bike)
  end

  it "drops off working bikes to the docking station" do
    bike = double(:bike, broken: false)
    bikes = [bike]
    subject.pick_up_bike(bikes)
    ds = double(:docking_station)
    allow(ds).to receive(:bikes) { [] }
    subject.drop_off_working_bikes(ds)
    expect(subject.fixed_bikes).to be_empty
  end
end