json.array! @devices do |device|
  json.device_id device
  json.sensor_id @sensors[@devices.index(device)]
end
