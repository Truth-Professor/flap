Rails.application.routes.draw do
  get 'users/index'
  get 'users/history'
  get 'users/edit'
  get 'users/update'
  get 'users/destroy'
  get 'orders/show'
  get 'orders/create'
  get 'carts/index'
  get 'carts/destroy'
  get 'comments/index'
  get 'comments/edit'
  get 'comments/create'
  get 'comments/update'
  get 'comments/destroy'
  get 'favorites/create'
  get 'favorites/destroy'
  get 'cds/top'
  get 'cds/index'
  get 'cds/index_genre'
  get 'cds/show'
  get 'cds/update'
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
  
end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
