require 'spec_helper'
require 'API/pinWatcher'

describe PinWatcher do

  it 'should check for pin status' do
    expect(PinWatcher.test).to eq('hi')
  end
  it 'should record pin status change' do
  end
end
