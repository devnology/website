class Backend::BlogsController < Backend::ApplicationController

  inherit_resources

  def collection
    @blogs ||= end_of_association_chain.order('created_at DESC')
  end

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
