Boardgame::Application.routes.draw do

  get "pages/home"

  get "sessions/login_page", :as => 'login_page'

  post "sessions/login"

  get "sessions/logout", :as => 'logout'

  root to: 'pages#home'

  resources :groups do
  	member do
  		put 'join'
  	end
  	resources :events
  end

  resources :users

  resources :posts

  resources :game_suggestions
  
  get '/groups/:id/join' => 'groups#join'

end
