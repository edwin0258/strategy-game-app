Rails.application.routes.draw do
  resources :users, except: [:new]
  get 'register' => 'users#new'
  root 'pages#welcome'
  resources :pages
  resources :sessions, except: [:new, :create, :destroy]
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  get 'logout' => 'sessions#destroy'
  resources :clans do
    member do
      post 'attack'
    end
  end
  resources :resources do 
    member do
      post 'purchase'
    end
  end
  resources :relationships
end
