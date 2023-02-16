require "test_helper"

class SensorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sensor = sensors(:one)
  end

  test "should get index" do
    get sensors_url, as: :json
    assert_response :success
  end

  test "should create sensor" do
    assert_difference("Sensor.count") do
      post sensors_url, params: { sensor: { device_type: @sensor.device_type, sensor_type: @sensor.sensor_type, timestamp: @sensor.timestamp, user: @sensor.user, values_x: @sensor.values_x, values_y: @sensor.values_y, values_z: @sensor.values_z } }, as: :json
    end

    assert_response :created
  end

  test "should show sensor" do
    get sensor_url(@sensor), as: :json
    assert_response :success
  end

  test "should update sensor" do
    patch sensor_url(@sensor), params: { sensor: { device_type: @sensor.device_type, sensor_type: @sensor.sensor_type, timestamp: @sensor.timestamp, user: @sensor.user, values_x: @sensor.values_x, values_y: @sensor.values_y, values_z: @sensor.values_z } }, as: :json
    assert_response :success
  end

  test "should destroy sensor" do
    assert_difference("Sensor.count", -1) do
      delete sensor_url(@sensor), as: :json
    end

    assert_response :no_content
  end
end
