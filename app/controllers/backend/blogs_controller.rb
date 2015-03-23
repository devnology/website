class Backend::BlogsController < Backend::ApplicationController

  inherit_resources

  def create
    create! { backend_blogs_path }
  end

  def edit
    edit!
  end

  def update
    update! { backend_blogs_path }
  end

  def permitted_params
    params.permit(blog: [:title,
                         :content])
  end

end
