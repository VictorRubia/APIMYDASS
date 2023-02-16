json.set! :user do
  json.set! :id, @user.first.user_id
  json.set! :first_timestamp, @user.first[:timestamp]
  json.set! :last_timestamp, @user.last[:timestamp]
end