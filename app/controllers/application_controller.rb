class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # $sensor = PinWatcher::Sensor.new if $sensor.nil?
  
  # watch :pin => 17, :goes => :high do
  #   	$sensor.status = true
  # end
end
