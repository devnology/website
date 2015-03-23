Devnology::Application.routes.draw do

  mount Bootsy::Engine => '/bootsy', as: 'bootsy'
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
  root 'pages#homepage'

end
