Rails.application.routes.draw do


root :to => 'cds#top'
devise_for :admins, controllers: {
  sessions:      'admins/sessions',
  passwords:     'admins/passwords',
  registrations: 'admins/registrations'
}
devise_for :users, controllers: {
  sessions:      'users/sessions',
  passwords:     'users/passwords',
  registrations: 'users/registrations'
}

resources :cds, only: [:top, :index, :index_genre, :show, :update]
resources :favorites, only: [:create, :destroy]
resources :comments, only: [:index, :edit, :create, :update, :destroy]
#resources :carts, only: [:index, :destroy]
resources :orders, only: [:show, :create]
get '/users/carts/:id' => 'carts#show',as: "user_cart"
resources :users, only: [:index, :show, :edit, :create, :update, :destroy]
resources :cart_items, only: [:create, :destroy]
#get '/users/carts' => 'carts#index'

  post '/add_item' => 'carts#add_item'
  post '/update_item' => 'carts#update_item'
  delete '/delete_item' => 'carts#delete_item'
namespace :admins do
      get '/cds/top' => 'cds#top'
  post '/cds/top' => 'cds#create'
  resources :users, only: [:index, :show, :edit, :update, :destroy]
  resources :cds, only: [:index, :show, :edit, :create, :update, :destroy]

  # delete '/users' => 'users#destroy'
  resources :artists, only: [:new, :create]
  resources :genres, only: [:new, :create]
  resources :labels, only: [:new, :create]

end

  get 'history' => 'users#history'

  get 'index_genre' => 'cds#index_genre'


end
