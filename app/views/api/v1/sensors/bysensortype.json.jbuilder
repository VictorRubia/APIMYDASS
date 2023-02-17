# json.array! @sensors, partial: "api/v1/sensors/sensors", as: :sensor

json.array! @sensors do |sensors|
  json.device_type sensors[:device_type]
  # json.sensor_type sensors[:sensor_type]
  json.values_x sensors[:values_x]
  json.values_y sensors[:values_y]
  json.values_z sensors[:values_z]
  json.timestamp sensors[:timestamp]
end