require 'docking_station'

describe DockingStation do
  # it "responds to a release bike request" do
  #   expect(subject).to respond_to :release_bike
  # end

  it { is_expected.to respond_to :release_bike}

  # it "notifies person that no bikes are available" do
  #   expect { bike.working? false }.to raise_error(RuntimeError)
  # end

end
