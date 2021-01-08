require 'garage'

describe Garage do
  
  it "receives broken bikes from the van" do
    # van = Van.new
    bike = double(:bike, broken: true)
    bikes = [bike]
    van = double(:van)
    allow(van).to receive(:pick_up_bike).with(bikes)
    allow(van).to receive(:drop_off_bikes).with(subject) { subject.bikes_to_fix.push(bike) }
    van.pick_up_bike(bikes)
    van.drop_off_bikes(subject)
    expect(subject.bikes_to_fix).to include(bike)
  end

  it "moves bikes to the working_bikes array" do
    bike = double(:bike)
    allow(bike).to receive(:fix_bike)
    subject.bikes_to_fix.push(bike)
    subject.fix_bikes
    expect(subject.working_bikes).to include(bike)
  end

  it "fixes bikes" do
    bike = double(:bike, broken?: true)
    subject.bikes_to_fix.push(bike)
    expect(bike).to receive(:fix_bike)
    subject.fix_bikes
  end
end