class StaticPagesController < ApplicationController
  def index
    @events = Event.rank(:row_order).all
    @devices = Device.all
  end

  def settings
  end
end
