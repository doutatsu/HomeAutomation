class StaticPagesController < ApplicationController
  def index
    @events = Event.all
  end

  def settings
  end
end
