Rails.application.routes.draw do

  resources :users, only: [:index, :show, :update, :destroy, :create] do
    resources :artworks, only: [:index]
  end
  resources :artworks, only: [:show, :update, :destroy, :create]
  resources :artwork_shares, only: [:create, :destroy]

  # /users//artworks


  # resources :users, only: :show do
  #   resources :artworks, only: :index
  # end


  # get 'users/:id', to: 'users#show', as: 'user'
  # get 'users', to: 'users#index', as: 'user_index'
  # post 'users', to: 'users#create', as: 'create_user'
  # patch 'users/:id', to: 'users#update', as: 'update_user'
  # put 'users/:id', to: 'users#update', as: 'puts_update_user'
  # delete 'users/:id', to: 'users#destroy', as: 'delete_user'
  # get 'users/new', to: 'users#new', as: 'new_user'
  # get 'users/:id/edit', to: 'users#edit', as: 'edit_user'

  # resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end