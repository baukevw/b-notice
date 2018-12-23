class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  private

  def convert_on_off(state)
    case state
    when '1'
      'on'
    when '0'
      'off'
    end
  end

  def invert_0_1(number)
    case number
    when '0'
      1
    when '1'
      0
    end
  end
end
