require 'docking_station'

describe DockingStation do 

    it { is_expected.to respond_to(:release_bike) }

    it "releases a new bike when the method release bike is called" do
      bike = DockingStation.new.release_bike
      expect(bike.working?).to eq(true)
    end

end