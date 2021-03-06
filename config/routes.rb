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
#resources :orders, only: [:show, :create]
get '/users/carts/:id' => 'carts#show',as: "user_cart"
post '/users/carts/:id' => 'carts#create'
post  'orders/:id' => 'orders#create',as: "create_order"
get  'orders/:id' => 'orders#show',as: "user_order"
get 'users/historys' => 'histories#index',as: "create_history"
post 'histories' => 'histories#create',as: "history_create"
resources :users, only: [:index, :show, :edit, :create, :update, :destroy]
resources :cart_items, only: [:create, :destroy]
#get '/users/carts' => 'carts#index'

namespace :admins do
      get '/cds/top' => 'cds#top'
  post '/cds/top' => 'cds#create'
  resources :users, only: [:index, :show, :edit, :update, :destroy]
  resources :cds, only: [:index, :show, :edit, :create, :update, :destroy]

  # delete '/users' => 'users#destroy'
  resources :artists, only: [:new, :create, :destroy]
  resources :genres, only: [:new, :create, :destroy]
  resources :labels, only: [:new, :create, :destroy]

end


  get 'index_genre' => 'cds#index_genre'


end
