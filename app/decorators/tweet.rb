class Tweet < Draper::Decorator
  include Twitter::Autolink

  def text
    auto_link(object.text).html_safe
  end

  def date
    object.created_at
  end

end
