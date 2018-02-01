module ApplicationHelper
  def alert_class(key)
    if key == 'notice'
      'alert-success'
    elsif key == 'alert'
      'alert-warning'
    else
      ''
    end
  end

  def alert_icon(key)
    if key == 'notice'
      'icon-ok'
    elsif key == 'alert'
      'icon-info-circled'
    else
      ''
    end
  end
end
