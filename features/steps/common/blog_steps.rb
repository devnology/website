require_relative 'factories'

module CommonSteps
  module Blog

    include Spinach::DSL
    include Factories

    step 'there is a blog post' do
      @event = create_blog_post
    end

  end
end
