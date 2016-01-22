Rails.application.routes.draw do
  get 'api/v1'

  get 'api/quotes'

  devise_for :users
  
  namespace :api do
    namespace :v1 do
      get '/favorite_quotes' => 'favorite_quotes#index'
      get'/favorite_quotes/new' => 'favorite_quotes#new'
      post '/favorite_quotes' => 'favorite_quotes#create'

      get '/quotes' => 'quotes#index'
    end
  end

  get '/' => 'quotes#index'

  get '/users' => 'users#index'
  get '/users/:id' => 'users#show'
  
  
  get 'quotes' => 'quotes#index'
  get 'quotes/new' => 'quotes#new'
  post 'quotes' => 'quotes#create'
  get 'quotes/:id'=> 'quotes#show'
  get 'quotes/:id/edit' => 'quotes#edit'
  patch 'quotes/:id' => 'quotes#update'
  delete 'quotes/:id' => 'quotes#destroy'
  
  
  post '/user_quotes' => 'user_quotes#create'

  get 'groups/new'=> 'groups#new'
  post 'groups' => 'groups#create'

  get '/favorites' => 'favorites#index'
  get'/favorites/new' => 'favorites#new'
  post '/favorites' => 'favorites#create'
  
  
  

end
