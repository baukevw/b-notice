class UptimeController < ApplicationController
  def uptime_robot_endpoint
    logger.info params
  end
end
