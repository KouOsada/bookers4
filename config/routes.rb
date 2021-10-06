Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users
  resources :users, only: [:show, :index, :edit, :update]
  resources :books
  root 'homes#top'
  get '/home/about' => 'homes#about', as: 'home_about'
end
