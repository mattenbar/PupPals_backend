Rails.application.routes.draw do
  
 namespace :api do
    namespace :v1 do
      resources :users, only: [:show, :index, :create, :update]
      post '/register' => 'users#create'
      put '/img-upload' => 'users#img_upload'
      post '/liked-me' => 'users#likedMe'
      
      resources :sessions, only: [:create]
      delete '/logout' => 'sessions#destroy'
      post '/login' => 'sessions#create'
     
      
    end
 end
end
