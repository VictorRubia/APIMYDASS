json.array! @uniqusers do |my_model|
  json.user_id my_model
  json.first_timestamp Sensor.where(user_id: my_model).first[:timestamp]
  json.last_timestamp Sensor.where(user_id: my_model).last[:timestamp]
end