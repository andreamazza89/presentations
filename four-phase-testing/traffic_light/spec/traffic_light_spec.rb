require_relative '../lib/traffic_light.rb'

describe TrafficLight do

  describe '#intialize' do
    context 'when initialized' do
      it 'state is set to stop' do
        expect(subject.state).to eq :stop
      end
    end
  end
#need to add tests for states i dont expect!
  describe '#next' do
    context 'when state is currently stop' do
      it 'will change state to wait' do
        expect{subject.next}.to change{subject.state}.to(:wait)
      end
    end
    context 'when state is currently wait and previously stop' do
      it 'will change state to go' do
        subject.next
        expect{subject.next}.to change{subject.state}.to(:go)
      end
    end
    context 'when state is currently go' do
      it 'will change state to wait' do
        subject.next
        subject.next
        expect{subject.next}.to change{subject.state}.to(:wait)
      end
    end
    context 'when state is currently wait and previously go' do
      it 'will change state to stop' do
        subject.next
        subject.next
        subject.next
        expect{subject.next}.to change{subject.state}.to(:stop)
      end
    end
  end
end
