require 'docking_station'


describe Bike do
  it "responds to a working? request on a bike" do
    expect(subject).to respond_to :working?
  end
end
