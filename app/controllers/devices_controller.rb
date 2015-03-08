class DevicesController < ApplicationController
  
  def index
  end

  def show
    device = Device.find(params[:id])
  end

  def edit
    @device = Device.find(params[:id])
  end

  def update
    @device = Device.find(params[:id])
    if @device.update_attributes(device_params)
      puts "Device updated"
      redirect_to :root
    else
      puts "Device wasn't updated"
      render 'edit'
    end
  end

  def switch
    uri = URI('http://192.168.1.76:80/switch')
    @device = Device.find(params[:id])
    unless params[:status].nil?
      puts "Switching #{params[:status]}"
      response = Net::HTTP.post_form(uri, 'status' => params[:status])
      puts response.body
    end
    redirect_to :root
  end

  private

    def device_params
      params.require(:device).permit(:name)
    end
end
