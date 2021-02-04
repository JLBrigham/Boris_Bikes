require 'Docking_station'

describe DockingStation do
  it 'check if Dockingstation exists' do
    expect(DockingStation.new.is_a?(DockingStation)).to eq true
  end

  it 'should respond to release_bike method' do
    expect(subject).to respond_to(:release_bike)
  end
  end
