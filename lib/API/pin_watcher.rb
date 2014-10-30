require 'pi_piper'
include PiPiper

module PinWatcher
  def self.test
    after :pin => 17, :goes => :high do
      return "online"
    end
  end
end
