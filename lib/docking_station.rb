require_relative 'bike'

class DockingStation

  def initialize
    @bikes_docked = []
    @capacity = 20
  end

  def release_bike
    fail "No bikes available" if @bikes_docked.length == 0
    @bikes_docked.pop
  end

  def dock(bike)
    fail 'Docking station is full' if @bikes_docked.length >= @capacity

    @bike = bike
    @bikes_docked << @bike

  end

end
