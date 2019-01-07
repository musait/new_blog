Rails.application.routes.draw do
  devise_for :users
  resources :posts
  root 'posts#index'

  scope '/admin' do
    resources :posts, except: [:index, :show]
  end

  resources :posts do
   resources :comments
  end

   resources :comments do
     resources :comments
   end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
