require 'docking_station'

describe DockingStation do 

  describe '#release_bike' do
  it 'releases a bike' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.release_bike).to eq(bike)
  end

  it 'raises an error if no bikes are avalaible' do
    expect { subject.release_bike }.to raise_error 'No bikes available'
  end
end

    it "docks a bike" do
      bike = Bike.new
      expect(subject.dock(bike)).to eq(bike)
    end

    it "returns the correct docked bike" do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.bike).to eq(bike)
    end



end
