class UptimeController < ApplicationController
  skip_before_action :verify_authenticity_token, if: :json_request?

  def uptime_robot_endpoint
    logger.info params
  end
end
