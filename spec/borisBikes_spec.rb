require 'borisBikes'

describe DockingStation do
  # it "is a kind of dockingstation object" do
  #   expect(DockingStation.new).to eq DockingStation
  # end
  it "responds to a release bike request" do
    expect(subject).to respond_to :release_bike
    end
  it "respons to a working? request on a bike" do
    expect(subject).to respond_to :working?

  end
end
