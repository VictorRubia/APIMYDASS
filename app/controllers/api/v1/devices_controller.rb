class Api::V1::DevicesController < Api::V1::BaseController

  def index
    @devices = Sensor.all.pluck(:device_type).uniq
    @sensors = []
    @devices.each do |device|
      @sensors << Sensor.where(device_type: device).pluck(:sensor_type).uniq
    end
  end

  private
  # Only allow a list of trusted parameters through.
  def devices_params
    params.require(:device)
  end
end
