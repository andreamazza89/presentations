class TrafficLight
attr_reader :state

  def initialize
    @state = :stop
    @states = [:wait, :go, :wait, :stop]
  end

  def next
  @states << @states.shift
  @state = @states[-1]

  end
end
