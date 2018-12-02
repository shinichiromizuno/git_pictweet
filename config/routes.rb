Rails.application.routes.draw do
 devise_for :users
 root 'tweets#index'
 post 'tweets/confirm' => 'tweets#confirm'
 get 'users/:id' => 'users#show'
 resources :tweets do
   resources :comments, only: [:create]
 end
 resources :users, only: [:show]
end