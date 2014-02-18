Embertest::Application.routes.draw do

  get "test/index"
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  get "home/index"
  #website root
  root to: 'home#index'

namespace :api do
  namespace :v1 do
      resources :stories, only: :index
  end
end
  
end
