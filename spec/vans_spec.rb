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
end