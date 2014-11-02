 require 'pi_piper'
 include PiPiper

module PinWatcher
  class Sensor
    
    def initialize
      @status = false
    end

    def status=(status)
      @status = status
    end

    def status
      return @status
    end
  end
end
