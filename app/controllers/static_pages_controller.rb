require 'pi_piper'
include PiPiper

class StaticPagesController < ApplicationController
  def index
   @sensor_status = 'hi'
    
    watch :pin => 17, :goes => :high do
      @sensor_status = true
    end
  end

  def settings
  end
end
