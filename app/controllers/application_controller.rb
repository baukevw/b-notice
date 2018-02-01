class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  private

  def convert_on_off(state)
    case state
    when '1'
      return 'on'
    when '0'
      return 'off'
    end
  end

  def invert_0_1(number)
    case number
    when '0'
      return 1
    when '1'
      return 0
    end
  end

end
