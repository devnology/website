module ApplicationHelper

  def menu_item(url, name)
    content_tag :li, class: current_controller?(url) ? 'active' : '' do
      link_to url do
        "#{name}".html_safe
      end
    end
  end

  def tab_item(anchor, name, errors, active = false)
    content_tag :li, class: active ? 'active' : ''  do
      link_to "\##{anchor}", :data => { :toggle => 'tab'}, class: errors ? 'text-danger' : '' do
        "#{name}".html_safe
      end
    end
  end

  def current_controller?(url)
    request.path =~ /#{url}/
  end

end
