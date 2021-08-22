class PagesController < ApplicationController
  before_action :fetch_stoplight_status, only: :index

  def index
    unless @data.nil?
      @red = invert_0_1(@data['0'])
      @orange = invert_0_1(@data['1'])
      @green = invert_0_1(@data['2'])
      @buzzer = invert_0_1(@data['3'])
    end
  end

  private

  def fetch_stoplight_status
    response = HTTParty.get(ENV['API_STATUS_URL'])

    case response
    when 200
      @relay_api_available = true
      @data  = JSON.parse(response.body)
    else
      @relay_api_available = false
      @data = nil
    end
  end
end
