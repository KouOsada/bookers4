Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users
  root 'homes#top'
  get '/home/about' => 'homes#about', as: 'home_about'
  resources :users, only: [:show, :index, :edit, :update] do
    resource :favorites, only: [:create, :destroy]
  end
  resources :books
  
end
