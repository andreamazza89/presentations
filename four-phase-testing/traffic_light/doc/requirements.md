# Build a traffic light

The task is to build a simple traffic light class (test drive it!). 
Here are the requirements:

- For each test you write, try to think about the four steps. Most tests will 
not need step 4 as this is 'automatic', but it is still good to consider all steps.

- The public inerface of the traffic light is fairly simple and consists of two 
instance methods: #state and #next 

- #state returns the current state of the traffic light, which should be one of 
the following three symbols: `:stop`, `:wait`, `:go` 

- When instantiated, a traffic light objects state should be `stop` for safety 
reasons

- #next changes the state of the traffic light to the next state. The sequence 
of states should be as follows: :go -> :wait -> :stop -> :wait -> go -> :wait, 
etc

- make sure all cases are covered or there might be car crashes! For instance, 
Is it enough to test that :wait is followed by :go or :stop or should you test
that if :wait is preceded by :go it should be followed by :stop and viceversa?
