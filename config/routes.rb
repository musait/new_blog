Rails.application.routes.draw do
  get 'comments/new'
  get 'comments/create'
  get 'comments/edit'
  get 'comments/destroy'
  get 'comments/index'
  devise_for :users
  resources :posts
  root 'posts#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
