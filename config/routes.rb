Rails.application.routes.draw do
  devise_for :users
  root  'posts#index'
  resources :posts do
    resources :comments, only: [:create]
  end
  get   'posts'      =>  'posts#index'
  get   'posts/new'  =>  'posts#new'
  post  'posts'      =>  'posts#create'
  delete  'posts/:id'  => 'posts#destroy'
  patch   'posts/:id'  => 'posts#update'
  get   'posts/:id/edit'  => 'posts#edit'
  get   'users/:id'  =>  'users#show'
  get 'posts/:id' => 'posts#show'
end