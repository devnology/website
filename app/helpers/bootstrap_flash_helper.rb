module BootstrapFlashHelper

  ALERT_TYPES = [:danger, :info, :success, :warning]

  def bootstrap_flash
    flash.flat_map do |type, message|
      create_flash_message(type, message)
    end.compact.join('\n').html_safe
  end

  def create_flash_message(type, message)
    return if message.blank?
    return unless ALERT_TYPES.include?(type)

    Array(message).map do |msg|
      text = content_tag(:div,
                         content_tag(:button,
                                     raw("&times;"),
                                     class: "close",
                                     "data-dismiss" => "alert") +
                         msg.html_safe,
                         class: "alert fade in alert-#{type}")
      text
    end
  end
end
