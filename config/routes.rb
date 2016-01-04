Rails.application.routes.draw do
  devise_for :users
  get '/profiles' => 'profiles#index'
  get '/profiles/:id' => 'profiles#show'
  get '/profiles/new' => 'profiles#new'
  post '/profiles' => 'profiles#create'
  get 'profiles/:id/edit' => 'profiles#edit'
  patch 'profiles/:id' => 'profiles#update'
  delete 'profiles/:id' => 'photos#destroy'
  
  get 'quotes' => 'quotes#index'
  get 'quotes/new' => 'quotes#new'
  post 'quotes' => 'quotes#create'

  get 'groups/new' => 'groups#new'
  post 'groups' => 'groups#create'
end
