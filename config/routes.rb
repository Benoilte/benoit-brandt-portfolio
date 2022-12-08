Rails.application.routes.draw do
  # devise_for :users
  devise_for :users, controllers: { registrations: "users/registrations", sessions: 'users/sessions' }
  # routes for pages controller
  root to: "pages#home"
  get 'about', to: 'pages#about'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resources :professional_experiences, only: [:index]
  resources :projects, only: [:index, :show]

  resources :contacts, only: %i[new create]

  get "/service-worker.js", to: "service_worker#service_worker"
  get "/manifest.json", to: "service_worker#manifest"
end
