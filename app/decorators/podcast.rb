class Podcast < Draper::Decorator
  include TruncateHtmlHelper

  delegate_all

  def url
    object.enclosure.url
  end

  def guid
    object.guid.content
  end

  def description
    object.description.html_safe
  end

  def truncated_description
    truncate_html(description, length: 350)
  end

  def date
    object.pubDate
  end

  def duration
    object.itunes_duration.content
  end

end
