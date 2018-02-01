class PagesController < ApplicationController

  def index
    response = HTTParty.get(ENV['API_STATUS_URL'])
    hash = JSON.parse(response.body)
    @red = invert_0_1(hash["0"])
    @orange = invert_0_1(hash["1"])
    @green = invert_0_1(hash["2"])
    @buzzer = invert_0_1(hash["3"])
  end
end
