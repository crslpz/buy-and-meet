Rails.application.routes.draw do
  get 'items/index'
  get 'items/create'
  get 'items/update'
  get 'items/desstroy'
  get 'items/show'
  root to: 'static_pages#root'

  namespace :api, defaults: {format: JSON} do
    resources :users, only: [:index, :create]
    resources :items, only: [:index, :create, :update, :destroy, :show]
    resource :session, only:[:create, :destroy, :show]
  end
end


