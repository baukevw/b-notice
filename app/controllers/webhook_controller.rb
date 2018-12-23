class WebhookController < ApplicationController
  protect_from_forgery with: :null_session

  respond_to :json

  def rpi_relay_webhook
    logger.info params.rpi_relay_api
    render status: 200, json: { 'Status' => '200' }.to_json
  end
end
