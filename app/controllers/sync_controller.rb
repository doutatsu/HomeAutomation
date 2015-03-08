class SyncController < ApplicationController
  skip_before_filter  :verify_authenticity_token #see: http://api.rubyonrails.org/classes/ActionController/RequestForgeryProtection.html
  def fetch
    event = Event.where(trigger_device: request['device']).first
    if event.nil?
      render json: {'response' => 'No Events Associated'}
    elsif event.trigger_device_status == request['status']
      # response = Net::HTTP.get_response(URI.parse("http://192.168.1.84:80/1/1"))
      render json: {'response' => 'Event triggered'}
    else
      render json: {'response' => 'Event conditions not met'}
    end
  end
end
