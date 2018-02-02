class UptimeController < ApplicationController
  protect_from_forgery with: :null_session, only: :uptime_robot_endpoint

  def uptime_robot_endpoint
    website = params[:uptime][:website]
    status = params[:uptime][:status]
    switch_stoplight(status)
  end

  def switch_stoplight(status)
    # status 1 = down
    # status 2 = up
    case status
    when '1'
      action1 = 'on'
      action2 = 'off'
      buzzer = true
    when'2'
      action1 = 'off'
      action2 = 'on'
      buzzer = false
    end

    if send_api_request(action1, action2, buzzer)
      render status: 200, json: { 'Status' => '200' }.to_json
    else
      render status: 500, json: { 'Status' => '500' }.to_json
    end
  end

  def send_api_request(action1, action2, buzzer)
    request1 = HTTParty.post(ENV['API_CHANGE_URL'], { :body =>  { "pin_number" => "0", "action" => action1 }})
    request2 = HTTParty.post(ENV['API_CHANGE_URL'], { :body =>  { "pin_number" => "2", "action" => action2 }})
    buzzer?(buzzer)
    return true if request1 && request2
    false
  end

  def buzzer?(boolean)
    if boolean
      HTTParty.post(ENV['API_CHANGE_URL'], { :body =>  { "pin_number" => "3", "action" => 'on' }})
      sleep(5)
      HTTParty.post(ENV['API_CHANGE_URL'], { :body =>  { "pin_number" => "3", "action" => 'off' }})
    end
  end
end
