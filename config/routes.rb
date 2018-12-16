Rails.application.routes.draw do
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
  devise_for :admins
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
