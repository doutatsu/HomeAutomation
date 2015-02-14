require 'spec_helper'

describe "Event" do
  it 'should create a new Event' do
    newEvent      = Event.new
    newEvent.name = 'Event1'
    id            = newEvent.save
    expect(newEvent.name).to eq(Event.find(id).name)
  end
  it 'should delete an Event' do
    newEvent      = Event.new
    newEvent.name = 'Event1'
    id            = newEvent.save
    
    expect(newEvent.name).to eq(Event.find(id).name)
  end
  it 'should edit an Event' do
    newEvent      = Event.new
    newEvent.name = 'Event1'
    id            = newEvent.save
    expect(newEvent.name).to eq(Event.find(id).name)
  end
end