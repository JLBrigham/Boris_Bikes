require 'Docking_station'
require 'Bike'
describe DockingStation do
  it 'check if Dockingstation exists' do
    expect(DockingStation.new.is_a?(DockingStation)).to eq true
  end

  it 'should respond to release_bike method' do
    expect(subject).to respond_to(:release_bike)
  end

 it 'checks if bike working' do
   bike = Bike.new
   expect(bike).to be_working
 end

 describe '#release_bike' do
   it 'releases a bike' do
     bike = Bike.new
     subject.dock(bike)
     expect(subject.release_bike).to eq bike
   end
 end

 it 'responds to to dock method' do
   expect(subject).to respond_to(:dock).with(1).argument
 end

 #it 'receive the bike when dock is called' do
  # expect(subject.dock).to

 it 'docks a bike' do
   bike = Bike.new
   expect(subject.dock(bike)).to eq bike
 end

 it 'returns a bike' do
   bike = Bike.new
   subject.dock(bike)
   expect(subject.bike).to eq(bike)
 end

 it 'raise error when asked to release when empty' do
 new_station = DockingStation.new
 expect{new_station.release_bike}.to raise_error("Empty Station Error")
end

it 'raise an error when storage is full' do
new_station = DockingStation.new
new_station.dock("bike")
expect{new_station.dock("bike")}.to raise_error("Station Full")
end
end
