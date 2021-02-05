require_relative './Bike'

class DockingStation
  attr_reader :bike

 def initialize
   @storage = []
 end

  def release_bike
    if @storage.empty?
      raise "Empty Station Error"
    end
  end

  def dock(bike)
    if @storage.count >= 20
      raise "Station Full"
    end
    @storage << bike
    @storage
  end

 

end
