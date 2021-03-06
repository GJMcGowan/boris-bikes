require 'docking_station'

describe DockingStation do
  it { is_expected.to respond_to :release_bike }
  # UNSURE WHETHER THIS SHOULD BE COMMENTED OUT
  it 'releases bikes that are not broken' do
    subject.dock double :bike, broken?: false
    bike = subject.release_bike
    expect(bike).not_to be_broken
  end

  describe DockingStation do
    it 'can dock a bike' do
      expect(subject.dock :bike).to eq :bike
    end
  end

  describe DockingStation do
    it 'raises error when no bikes available' do
      expect { subject.release_bike }.to raise_error 'No Bikes Available'
    end
  end
end
