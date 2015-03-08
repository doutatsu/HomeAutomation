class EventsController < ApplicationController
  
  def index
    @events = Event.rank(:row_order).all
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    if @event.save
      unless @event.time.nil?
        time = @event.time
        event = @event.as_json(only: [:trigger_device, :trigger_device_status,:affected_device,:affected_device_status])
        EventWorker.perform_at(time, event)
        puts "Scheduled Event added to the Queue"
      end
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

  def update_row_order
    @event = Event.find(params[:id])
    @event.row_order_position = params[:row_order_position]
    @event.save

    render nothing: true # this is a POST action, updates sent via AJAX, no view rendered
  end

  private

    def event_params
      params.require(:event).permit(:time, :trigger_device, :trigger_device_status, :affected_device, :affected_device_status)
    end
end
