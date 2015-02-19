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

  private

    def device_params
      params.require(:device).permit(:name)
    end
end
