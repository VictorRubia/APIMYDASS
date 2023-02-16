class Api::V1::SensorsController < Api::V1::BaseController
  before_action :set_sensor, only: %i[ show ]

  # GET /sensors
  def index
    if params.has_key?(:timestamp_ini) && params.has_key?(:timestamp_end)
      @sensors = Sensor.where("timestamp >= ? AND timestamp <= ?", params[:timestamp_ini], params[:timestamp_end])
    elsif params.has_key?(:timestamp_ini)
      @sensors = Sensor.where("timestamp >= ?", params[:timestamp_ini], params[:timestamp_end])
    else
      @sensors = Sensor.all
    end
    render json: @sensors
  end

  def byuser
    if params.has_key?(:timestamp_ini) && params.has_key?(:timestamp_end)
      @sensors = Sensor.where("timestamp >= ? AND timestamp <= ? AND user_id = ?", params[:timestamp_ini], params[:timestamp_end], params[:user_id])
    elsif params.has_key?(:timestamp_ini)
      @sensors = Sensor.where("timestamp >= ? AND user_id = ?", params[:timestamp_ini], params[:user_id])
    else
      @sensors = Sensor.where(user_id: params[:user_id])
    end
  end

  def bysensortype
    if params.has_key?(:timestamp_ini) && params.has_key?(:timestamp_end)
      @sensors = Sensor.where("timestamp >= ? AND timestamp <= ? AND user_id = ? AND sensor_type = ?", params[:timestamp_ini], params[:timestamp_end], params[:user_id], params[:sensor_type])
    elsif params.has_key?(:timestamp_ini)
      @sensors = Sensor.where("timestamp >= ? AND user_id = ? AND sensor_type = ?", params[:timestamp_ini], params[:user_id], params[:sensor_type])
    else
      @sensors = Sensor.where(user_id: params[:user_id], sensor_type: params[:sensor_type])
    end
  end

  def bydevicetype
    if params.has_key?(:timestamp_ini) && params.has_key?(:timestamp_end)
      @sensors = Sensor.where("timestamp >= ? AND timestamp <= ? AND user_id = ? AND device_type = ?", params[:timestamp_ini], params[:timestamp_end], params[:user_id], params[:device_type])
    elsif params.has_key?(:timestamp_ini)
      @sensors = Sensor.where("timestamp >= ? AND user_id = ? AND device_type = ?", params[:timestamp_ini], params[:user_id], params[:device_type])
    else
      @sensors = Sensor.where(device_type: params[:device_type], user_id: params[:user_id])
    end
  end

  def bydevicesensor
    @sensors = Sensor.where(device_type: params[:device_type], sensor_type: params[:sensor_type], user_id: params[:user_id])
    if params.has_key?(:timestamp_ini) && params.has_key?(:timestamp_end)
      @sensors = Sensor.where("timestamp >= ? AND timestamp <= ? AND user_id = ? AND device_type = ? AND sensor_type = ?", params[:timestamp_ini], params[:timestamp_end], params[:user_id], params[:device_type], params[:sensor_type])
    elsif params.has_key?(:timestamp_ini)
      @sensors = Sensor.where("timestamp >= ? AND user_id = ? AND device_type = ? AND sensor_type = ?", params[:timestamp_ini], params[:user_id], params[:device_type], params[:sensor_type])
    else
      @sensors = Sensor.where(device_type: params[:device_type], sensor_type: params[:sensor_type], user_id: params[:user_id])
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sensor
      @sensor = Sensor.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def sensor_params
      params.require(:sensor).permit(:device_type, :sensor_type, :values_x, :values_y, :values_z, :timestamp, :user_id, :timestamp_ini, :timestamp_end)
    end
end
