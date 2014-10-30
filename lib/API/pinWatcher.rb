 require 'pi_piper'
 include PiPiper

module PinWatcher
  class Sensor
    def initialize
      @@status = false
      pinJob
    end

    def status
      if @@status == true
        return 'online'
      else
        return 'offline'
      end
    end

    def pinJob
        watch :pin => 17, :goes => :high do
          @@status = true
        end
    end
  end
end
