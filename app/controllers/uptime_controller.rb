class UptimeController < ApplicationController
  skip_before_filter :verify_authenticity_token, if: :json_request?

  def uptime_robot_endpoint
    logger.info params
  end
end
