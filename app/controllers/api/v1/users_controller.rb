class Api::V1::UsersController < Api::V1::BaseController
  before_action :set_sensor, only: %i[ show update destroy ]

  # GET /users
  def index
    @users = Sensor.all.pluck(:user_id).uniq
    render json: @users
  end

  # GET /users/timestamps
  def timestamps
    @uniqusers = Sensor.all.pluck(:user_id).uniq
  end

  def timestampsbyuser
    @user = Sensor.where(user_id: params[:user_id])
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_sensor
    @user = Sensor.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def sensor_params
    params.require(:sensor).permit(:device_type, :sensor_type, :values_x, :values_y, :values_z, :timestamp, :user_id)
  end
end
