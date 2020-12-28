require 'docking_station'

describe DockingStation do 

  it 'has a default capacity' do
    expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
  end

  describe '#release_bike' do
  it 'releases a bike' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.release_bike).to eq(bike)
  end

  it 'raises an error if no bikes are avalaible' do
    expect { subject.release_bike }.to raise_error 'No bikes available'
  end

  it 'raises an error if the user tries to release a broken bike' do 
    bike = Bike.new
    bike.report_broken
    subject.dock(bike)
    expect { subject.release_bike }.to raise_error 'No bikes available'
  end
end
  describe "#dock" do 
    it "docks a bike" do
      bike = Bike.new
      expect(subject.dock(bike)).to eq(bike)
    end

    it "returns an error if the docking station is full" do
      subject.capacity.times { subject.dock Bike.new }
      expect{ subject.dock(Bike.new) }.to raise_error 'Docking Station full'
    end

  end



end
