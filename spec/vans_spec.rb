require 'vans'

describe Van do

  let(:bike) { double :bike }
  let(:docking_station) { double :docking_station }

  it "is passed broken bikes by the docking station" do
    bike = double(:bike, broken?: true)
    # docking_station = double(:docking_station, bikes: [bike])
    bikes = [bike]
    subject.pick_up_bike(bikes)
    expect(subject.broken_bikes).to include(bike)
  end

  describe "#drop_off_bikes" do
  it "drops off an array of broken bikes" do
    bike = double(:bike, broken?: true)
    bikes = [bike]
    subject.pick_up_bike(bikes)
    garage = double(:garage)
    subject.drop_off_bikes(garage)
    expect(subject.broken_bikes).to be_empty
  end
  end
end