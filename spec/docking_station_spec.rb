require 'docking_station'

describe DockingStation do


  it { is_expected.to respond_to :release_bike}
  it 'releases working bike' do
    subject.dock(Bike.new)
    bike = subject.release_bike
    expect(bike).to be_working
  end

  describe 'dock' do
    it 'raises an error when dock is full' do
      20.times { subject.dock(Bike.new) }
      expect {subject.dock(Bike.new)}.to raise_error 'Docking station is full'
    end
  end




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
