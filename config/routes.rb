Boardgame::Application.routes.draw do

  get "pages/home"

  get "sessions/login_page", :as => 'login_page'

  post "sessions/login"

  get "sessions/logout", :as => 'logout'

  root to: 'pages#home'

  resources :groups do
  	resources :events
  end

  resources :users

end
