class Spinach::Features::ManagingBlogs < Spinach::FeatureSteps

  include CommonSteps::Backend
  include CommonSteps::Blog

  step 'I add a blog post' do
    click_on 'Blogs'
    click_on 'Add blog'

    fill_in 'Title', with: 'Titel'
    fill_in 'Content', with: 'Een verhaaltje'
    click_on 'Save'
  end

  step 'I change the title of the blog post' do
    edit_blog

    fill_in 'Title', with: 'Andere naam'
    click_on 'Save'
  end

  step 'I see the blog post listed' do
    page.should have_content 'Titel'
  end

  step 'I see the new title of the blog post listed' do
    page.should have_content 'Andere naam'
  end

  private

  def edit_blog
    visit backend_blogs_path
    click_on 'Leuke blog post'
  end

end
