require 'pi_piper'
include PiPiper

class StaticPagesController < ApplicationController
  def index
    sensor_status = false
    
    if :pin => 17, :goes => :high do
      sensor_status = true
    else
      sensor_status = false
    end
  end
  def settings
  end
end
