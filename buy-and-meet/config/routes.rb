Rails.application.routes.draw do
  # get 'items/index'
  # get 'items/create'
  # get 'items/update'
  # get 'items/desstroy'
  # get 'items/show'
  root to: 'static_pages#root'

  namespace :api, defaults: {format: :json} do
    resources :users, only: [:index, :create]
    resources :items, only: [:index, :create, :update, :destroy, :show]
    resources :conversations, only: [:create, :destroy, :index]
    resources :messages, only: [:create, :index]
    resource :session, only:[:create, :destroy, :show]
  end
end


