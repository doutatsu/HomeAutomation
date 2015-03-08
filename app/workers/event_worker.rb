require 'net/http'
require 'json'

class EventWorker
  include Sidekiq::Worker
  def perform(name)
    puts "Event Activated"
    uri = URI('http://192.168.1.76:80/switch')
    req = Net::HTTP.post_form(uri, 'status' => name["trigger_device_status"])
    puts "Response: #{req.code} #{req.message}:#{req.body}"
  end
end