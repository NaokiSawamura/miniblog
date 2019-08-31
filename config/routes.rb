Rails.application.routes.draw do
  root to: 'posts#index'
  devise_for :users
  resources :users, only: [:index, :create, :edit, :update]
  resources :posts do
    resources :comments, only: [:create]
  end
    # namespace :api do
    #   resources :messages, only: :index, defaults: { format: 'json' }
    # end
end
