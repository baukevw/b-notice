class UptimeController < ApplicationController
  protect_from_forgery with: :null_session, only: :uptime_robot_endpoint

  def uptime_robot_endpoint
    logger.info params
  end
end
