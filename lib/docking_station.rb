require_relative 'bike'

class DockingStation

  def initialize
    @bikes_docked = []
    @capacity = 20
  end

  def release_bike
    fail "No bikes available" if empty?
    @bikes_docked.pop
  end

  def dock(bike)
    fail 'Docking station is full' if full?

    @bike = bike
    @bikes_docked << @bike

  end

  private
  
      def full?
          @bikes_docked.length >= @capacity
      end

      def empty?
        @bikes_docked.length == 0
      end
end
