class SyncController < ApplicationController
  skip_before_filter  :verify_authenticity_token #see: http://api.rubyonrails.org/classes/ActionController/RequestForgeryProtection.html
  def fetch
    if request['device'] == 'Sensor'
      render json: {'response' => 'Hello Sensor'}
    elsif request['value'] == '1'
      render json: {'response' => 'Sensor is On'}
    end
        
    # unless current_user == nil
    #   render json: Syncing.sync(request, current_user.id)
    # else
    #   render :nothing => true, :status => :unauthorized
    # end
  end
end
