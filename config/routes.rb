Devnology::Application.routes.draw do
  namespace :backend do
    resources :events
    root 'events#index'
  end

  resources :events do
    resources :registrations
  end
  get 'homepage' => 'pages#homepage'
  root 'pages#homepage'
end
