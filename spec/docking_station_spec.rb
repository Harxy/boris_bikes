require 'docking_station'

describe DockingStation do

  it { is_expected.to respond_to :release_bike}

  # it "notifies person that no bikes are available" do
  #   expect { bike.working? false }.to raise_error(RuntimeError)
  # end
  it { is_expected.to respond_to(:dock).with(1).argument}


end
