Embertest::Application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  get "home/index"
  #website root
  root to: 'home#index'

end
