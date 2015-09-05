Devnology::Application.routes.draw do

  devise_for :admins, controllers: {
    sessions: 'backend/sessions',
    passwords: 'backend/passwords'
  }

  namespace :backend do
    resources :events do
      resources :registrations
    end

    resources :blogs do
    end

    root 'events#index'
  end

  resources :events do
    member do
      post :register
      post :unregister
      get :confirm_registration
      get :confirm_unregistration
    end
  end

  resources :blogs, only: [:index, :show]

  resources :podcasts, only: [:index, :show]

  get 'homepage' => 'pages#homepage'
  get 'aboutus' => 'pages#aboutus'

  root 'pages#homepage'

  get '/:language/blog/:section/:id-:title', to: redirect('/blogs/%{title}'), constraints: { id: /\d+/ }
  get '/:language/blog/*other', to: redirect('/blogs')
  get '/:language/podcast/:section/:id-:title', to: redirect('/podcasts/%{title}'), constraints: { id: /\d+/ }
  get '/:language/podcast/*other', to: redirect('/podcasts')
  get '/nl/bijeenkomsten/details/:id-:title', to: redirect('/events/%{title}'), constraints: { id: /\d+/ }
  get '/nl/bijeenkomsten/*other', to: redirect('/events')
  get '/en/meetings/details/:id-:title', to: redirect('/events/%{title}'), constraints: { id: /\d+/ }
  get '/en/meetings/*other', to: redirect('/events')

  get '/:language/podcast', to: redirect('/podcasts')
  get '/:language/blog', to: redirect('/blogs')
  get '/:language/sponsoren', to: redirect('/aboutus')
  get '/:language/faq', to: redirect('/aboutus')
  get '/en/about-devnology', to: redirect('/aboutus')
  get '/nl/over-devnology', to: redirect('/aboutus')

end
