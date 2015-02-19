class StaticPagesController < ApplicationController
  def index
    @events  = Event.all
    @devices = Device.all
  end

  def settings
  end
end
