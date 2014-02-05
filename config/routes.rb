Devnology::Application.routes.draw do
  devise_for :admins, controllers: {
    sessions: 'backend/sessions',
    passwords: 'backend/passwords'
  }

  namespace :backend do
    resources :events
    root 'events#index'
  end

  resources :events do
    member do
      post :register
      get :confirm_registration
    end
  end

  get 'homepage' => 'pages#homepage'
  root 'pages#homepage'
end
