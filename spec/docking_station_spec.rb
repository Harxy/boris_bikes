require 'docking_station'

describe DockingStation do

  it { is_expected.to respond_to :release_bike}

  it { is_expected.to respond_to(:dock).with(1).argument}

  describe 'release_bike' do
    it "raises error" do
      expect { subject.release_bike }.to raise_error 'No bikes available'
    end
  end

end


# RSpec.describe "calling a missing method" do
#   it "raises" do
#     expect { Object.new.foo }.to raise_error(NameError)
#   end
# end
