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
    @relay_api_available = false
    response = begin
                 HTTParty.get(ENV['API_STATUS_URL'])
               rescue SystemCallError, StandardError
                 false
               end
    @data = if response
              @relay_api_available = true
              JSON.parse(response.body)
            else
              nil
            end
  end
end
