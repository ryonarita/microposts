Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'toppages#index'
  
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  
#  put 'update/:id', to: 'users#update'
  get 'signup', to: 'users#new'
  resources :users, only: [:index, :show, :new, :create, :edit, :update]
  
  resources :microposts, only: [:create, :destroy]
end
