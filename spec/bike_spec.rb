require 'Bike'

describe Bike do
  it 'check working? method' do
    expect(subject).to respond_to(:working?)
  end
end
