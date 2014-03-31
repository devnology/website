class PodcastDecorator < Draper::Decorator
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
    truncate_html(description, length: 400)
  end

end
