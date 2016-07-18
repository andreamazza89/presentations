require_relative '../lib/traffic_light.rb'

#The TrafficLight class is responsible to show the state of Traffic Light
describe TrafficLight do
let(:subject) {described_class.new}
   
  it 'checks that initially traffic light object state is stop' do
expect(subject.state).to eq :stop
end
describe '#next' do

it 'change its state from :stop to :wait' do
expect(subject.next).to eq :wait
end
it 'change its state from :wait to :go' do
subject.next
expect(subject.next).to eq :go
end
it 'change its state from :go to :wait' do
subject.next
subject.next
expect(subject.next).to eq :wait
end
it 'change its state from :wait to :stop if previous state was :go' do
subject.next
subject.next
subject.next
expect(subject.next).to eq :stop
end
end


end
