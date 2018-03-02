Rails.application.routes.draw do
  devise_for :users, :controllers => { :registrations => "user/registrations"}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'welcome#index'
  get 'my_portfolio', to: 'users#my_portfolio'
  get 'search_atocks', to: 'atocks#search'
  resources :user_stocks
  resources :users, only: [:show]
  resources :friendships
  get 'my_friends', to: "users#my_friends"
  get 'search_friends', to: "users#search"


  #get 'about', to: 'pages#about'
  #resources :articles
end
