Rails.application.routes.draw do
  
 namespace :api do
    namespace :v1 do
      resources :users, only: [:show, :index, :create]
      
      resources :sessions, only: [:create]
      delete '/logout' => 'sessions#destroy'
      post '/login' => 'sessions#create'
      get "logged_in" => 'sessions#logged_in'
      
    end
 end
end
