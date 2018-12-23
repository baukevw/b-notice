class WebhookController < ApplicationController
  protect_from_forgery with: :null_session, only: :rpi_relay_webhook

  def rpi_relay_webhook
    logger.info params.inspect
  end
end
