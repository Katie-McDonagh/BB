require 'docking_station'

describe DockingStation do 

  let(:bike) { double :bike }

  it 'has a default capacity' do
    expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
  end

  describe '#release_bike' do
  it 'releases a bike' do
    bike = double(:bike, broken?: false)
    subject.dock(bike)
    expect(subject.release_bike).to eq(bike)
  end

  it 'raises an error if no bikes are avalaible' do
    expect { subject.release_bike }.to raise_error 'No bikes available'
  end

  it 'raises an error if the user tries to release a broken bike' do 
    bike = double(:bike, broken?: true)
    subject.dock(bike)
    expect { subject.release_bike }.to raise_error 'No bikes available'
  end
end
  describe "#dock" do 
    it "docks a bike" do
      expect(subject.dock(:bike)).to eq(:bike)
    end

    it "returns an error if the docking station is full" do
      bike = double(:bike, broken?: true)
      subject.capacity.times { subject.dock(:bike) }
      expect{ subject.dock((:bike)) }.to raise_error 'Docking Station full'
    end
  end

end
