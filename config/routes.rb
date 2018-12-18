Rails.application.routes.draw do

  root :to => 'cds#top'

  get '/index_genre' => 'cds#index_genre'

  get '/history' => 'users#history'

  resources :users, only: [:index, :history, :edit, :update, :destroy]

  resources :cds, only: [:top, :index, :index_genre, :show, :update]

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



namespace :admins do
  get '/cds/top' => 'cds#top'

  resources :users, only: [:index, :show, :history, :edit, :update]

  resources :cds, only: [:top, :index, :show, :edit, :create, :update, :destroy]

end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
