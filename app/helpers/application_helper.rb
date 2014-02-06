module ApplicationHelper

  def menu_item(url, name)
    content_tag :li, class: current_controller?(url) ? 'active' : '' do
      link_to url do
        "#{name}".html_safe
      end
    end
  end

  def tab_item(anchor, name, active = false)
    content_tag :li, class: active ? 'active' : '' do
      link_to "\##{anchor}", :data => { :toggle => 'tab'} do
        "#{name}".html_safe
      end
    end
  end

  def current_controller?(url)
    route = Rails.application.routes.recognize_path(url)
    route && route[:controller] == params[:controller]
  end

end
