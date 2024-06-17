Rails.application.routes.draw do
  devise_for :users
  # Other routes
  root to: 'pages#home'
  test 
end
