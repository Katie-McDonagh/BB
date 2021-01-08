require 'garage'

describe Garage do

  it "fixes bikes" do
    bike = double(:bike, broken?: true)
    subject.bikes_to_fix.push(bike)
    expect(bike).to receive(:fix_bike)
    subject.fix_bikes
  end

  it "moves bikes to the working_bikes array" do
    bike = double(:bike)
    allow(bike).to receive(:fix_bike)
    subject.bikes_to_fix.push(bike)
    subject.fix_bikes
    expect(subject.working_bikes).to include(bike)
  end

end