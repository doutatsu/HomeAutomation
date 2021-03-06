require 'spec_helper'
require 'API/pinWatcher'

describe PinWatcher do
  
  it 'should check for pin status' do
    sensor = PinWatcher::Sensor.new
    expect(sensor.status).to eq(false)
  end

  it 'should record pin status change' do
    sensor = PinWatcher::Sensor.new
    expect(sensor.status).to eq(false)
    pin = PiPiper::Pin.new(:pin => 17, :direction => :out)
    pin.on
    expect(sensor.status).to eq(true)
  end
end
