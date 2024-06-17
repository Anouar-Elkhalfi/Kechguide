Rails.application.routes.draw do
  get 'guides/new'
  get 'guides/create'
  get 'guides/show'
  get 'guides/index'
  devise_for :users
  # Other routes
  root to: 'pages#home'

  resources :guides, only: [:new, :create, :show, :index]
end
