Rails.application.routes.draw do
  get 'picture_tags/index'
  get 'picture_tags/show'
  get 'picture_tags/edit'
  get 'picture_tags/new'
  resources :picture_tags
  resources :tags
  resources :pictures
  resources :comments
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
