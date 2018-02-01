class StoplightController < ApplicationController
  def switch_handler
    pin_number = params[:pin]
    action = convert_on_off(params[:state])

    if HTTParty.post(ENV['API_CHANGE_URL'], { :body =>  { "pin_number" => pin_number, "action" => action }})
      render status: 200, json: { 'Status' => '200' }.to_json
    else
      render status: 500, json: { 'Status' => '500' }.to_json
    end
  end
end
