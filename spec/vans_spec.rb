require 'vans'

describe Van do

  let(:bike) { double :bike }

  it "can store broken bikes" do
    subject.pick_up_bike(:bike)
    expect(subject.broken_bikes).to include(:bike)
  end

  it "is passed broken bikes by the docking station" do
    

  end
end