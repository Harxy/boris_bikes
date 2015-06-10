require_relative 'bike'

class DockingStation
  # encapsulate literal in a constant and use the constant everywhere else
  DEFAULT_CAPACITY = 20

  attr_accessor :capacity


  def initialize capacity = DEFAULT_CAPACITY
    @bikes_docked = []
    @capacity = capacity
  end

  def release_bike
    fail "No bikes available" if empty?
    bikes_docked.pop
  end

  def dock(bike)
    fail 'Docking station is full' if full?
    #@bike = bike
    bikes_docked << bike

  end

  private

  attr_reader :bikes_docked

    def full?
      bikes_docked.length >= DEFAULT_CAPACITY
    end

    def empty?
      bikes_docked.length == 0
    end
end
