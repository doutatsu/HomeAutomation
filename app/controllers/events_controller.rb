class EventsController < ApplicationController
  
  def index
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    if @event.save
      puts "Event Created"
      redirect_to :root
    else
      puts "Event wasn't created"
      render 'new'
    end
  end

  def show
    event = Event.find(params[:id])
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])
    if @event.update_attributes(event_params)
      puts "Event updated"
      redirect_to :root
    else
      puts "Event wasn't updated"
      render 'edit'
    end
  end

  def destroy
    event = Event.find(params[:id])
    event.destroy
    redirect_to :root
  end

  private

    def event_params
      params.require(:event).permit(:name, :trigger_device, :trigger_device_status, :affected_device, :affected_device_status)
    end
end
