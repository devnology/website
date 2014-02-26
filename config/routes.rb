Devnology::Application.routes.draw do
  devise_for :admins, controllers: {
    sessions: 'backend/sessions',
    passwords: 'backend/passwords'
  }

  namespace :backend do
    resources :events do
      resources :registrations
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

  resources :podcasts, only: :index
  get 'homepage' => 'pages#homepage'
  root 'pages#homepage'
end
