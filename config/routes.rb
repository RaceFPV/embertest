Embertest::Application.routes.draw do

  devise_for :users
  get "home/index"
  #website root
  root to: 'home#index'

end
