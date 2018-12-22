Rails.application.routes.draw do

  root :to => 'cds#top'

  get 'history' => 'users#history'



  resources :cds, only: [:top, :index, :index_genre, :show, :update]do
    resource :genres, only: [:create, :destroy]
  end

  resources :favorites, only: [:create, :destroy]

  resources :comments, only: [:index, :edit, :create, :update, :destroy]

  resources :carts, only: [:index, :destroy]

  resources :orders, only: [:show, :create]


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

resources :users, only: [:index, :show, :edit, :create, :update, :destroy]

namespace :admins do
  get '/cds/top' => 'cds#top'
  post '/cds/top' => 'cds#create'

  resources :users, only: [:index, :show, :edit, :update]

  resources :cds, only: [:index, :show, :edit, :create, :update, :destroy]

  resources :artists, only: [:new, :create]
  resources :genres, only: [:new, :create]


end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
