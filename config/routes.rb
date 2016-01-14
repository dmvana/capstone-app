Rails.application.routes.draw do
  devise_for :users
  get '/' => 'quotes#index'

  get '/profiles' => 'profiles#index'
  get '/profiles/new' => 'profiles#new'
  post '/profiles' => 'profiles#create'
   get '/profiles/:id' => 'profiles#show'
  get 'profiles/:id/edit' => 'profiles#edit'
  patch 'profiles/:id' => 'profiles#update'
  delete 'profiles/:id' => 'photos#destroy'
  
  get 'quotes' => 'quotes#index'
  get 'quotes/new' => 'quotes#new'
  post 'quotes' => 'quotes#create'
  get 'quotes/:id'=> 'quotes#show'
  get 'quotes/:id/edit' => 'quotes#edit'
  patch 'quotes/:id' => 'quotes#update'
  delete 'quotes/:id' => 'quotes#destroy'



  get 'groups/new' => 'groups#new'
  post 'groups' => 'groups#create'


end
