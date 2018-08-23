Rails.application.routes.draw do
  resources :picture_tags
  resources :tags
  resources :pictures do
    resources :comments
  end
  resources :comments
  resources :users
  #resources :sessions, only: [:new, :create, :destroy]
  post 'sessions', to:'sessions#create'
  get 'signup', to: 'users#new'
  post 'signup', to: 'users#create'
  get 'login', to: 'sessions#new'
  delete 'sessions', to: 'sessions#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
