require 'docking_station'

describe DockingStation do
  it "responds to a release bike request" do
    expect(subject).to respond_to :release_bike
    end
end
