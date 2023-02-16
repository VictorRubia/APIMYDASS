Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      defaults format: :json do
        get 'sensors', to: 'sensors#index', as: 'sensors'
        get 'sensors/:user_id', to: 'sensors#byuser', as: 'sensors_byuser'
        get 'sensors/:user_id/sensor_type/:sensor_type', to: 'sensors#bysensortype', as: 'sensors_bysensortype'
        get 'sensors/:user_id/device_type/:device_type', to: 'sensors#bydevicetype', as: 'sensors_bydevicetype'
        get 'sensors/:user_id/:device_type/:sensor_type', to: 'sensors#bydevicesensor', as: 'sensors_bydevicesensor'
        get 'users', to: 'users#index', as: 'users'
        get 'users/timestamps', to: 'users#timestamps', as: 'users_timestamps'
        get 'users/timestamps/:user_id', to: 'users#timestampsbyuser', as: 'users_timestampsbyuser'
        get 'devices', to: 'devices#index', as: 'devices'
      end
    end
  end
end
