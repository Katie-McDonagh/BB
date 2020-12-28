require 'docking_station'

describe DockingStation do 

  describe '#release_bike' do
  it 'releases a bike' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.release_bike).to eq(bike)
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
