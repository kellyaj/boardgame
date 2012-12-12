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
      member do
        put 'join'
      end
  end

  resources :invites

  resources :users

  resources :posts

  resources :game_suggestions do
    member { post :upvote }
  end

  resources :snacks
  
  get '/groups/:id/join' => 'groups#join'

  post '/groups/:id/events/:id' => 'events#join'

  get '/users/:id/dashboard' => 'users#dashboard', :as => 'user_dashboard'
end
