Rails.application.routes.draw do
  get 'pages/home'
  devise_for :users
  devise_scope :user do
     get '/users/sign_out' => 'devise/sessions#destroy'
  end


  get 'home/index'
  root to: 'pages#home'
  resources :users, only: [:show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
