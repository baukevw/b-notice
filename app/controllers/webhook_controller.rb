class WebhookController < ApplicationController
  skip_before_action :verify_authenticity_token

  def rpi_relay_webhook
    logger.info request
    render status: 200, json: { 'Status' => '200' }.to_json
  end
end
