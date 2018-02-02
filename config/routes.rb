Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#index'

  post 'switch-handler', to: 'stoplight#switch_handler'
  post 'uptime-robot-endpoint', to: 'uptime#uptime_robot_endpoint'
end
