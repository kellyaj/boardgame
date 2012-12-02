Boardgame::Application.routes.draw do

  resources :events
  
  get "sessions/login_page", :as => 'login_page'

  post "sessions/login"

  get "sessions/logout", :as => 'logout'

  root to: 'groups#index'

  resources :groups

  resources :users

end
