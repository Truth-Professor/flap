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
resources :carts, only: [:index, :destroy]
resources :orders, only: [:show, :create]
resources :users, only: [:index, :show, :edit, :create, :update, :destroy]
namespace :admins do
  resources :users, only: [:index, :show, :edit, :update, :destroy]
  resources :cds, only: [:index, :show, :edit, :create, :update, :destroy]
  resources :artists, only: [:new, :create]
  resources :genres, only: [:new, :create]
  get '/cds/top' => 'cds#top'
  post '/cds/top' => 'cds#create'
  # delete '/users' => 'users#destroy'
end

  get 'history' => 'users#history'
  get 'index_genre' => 'cds#index_genre'


end
