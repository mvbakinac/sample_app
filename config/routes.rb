Rails.application.routes.draw do
  root to: 'static_pages#home', via: :get
 
  get    'signup'  =>   'users#new'
  get    'index'   =>   'users#index'
  get    'help'    =>   'static_pages#help'
  get    'about'   =>   'static_pages#about'
  get    'contact' =>   'static_pages#contact'
  get    "login"   =>   'sessions#new'
  post   "login"  =>    'sessions#create'
  delete "logout"  =>   'sessions#destroy'
  resources :users
  resources :account_activations, only: [:edit]
  resources :microposts,          only: [:create, :destroy]


end
