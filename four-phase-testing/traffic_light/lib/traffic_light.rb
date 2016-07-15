class TrafficLight
  #the awesome code goes here
  attr_reader :state

  def initialize
    @state = :stop
    @states = [:stop, :wait, :go, :wait]
  end

  def next
    @states.rotate!
    @state = @states[0]
  end
end
