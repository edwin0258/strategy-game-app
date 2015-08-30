Rails.application.routes.draw do
  resources :users
  root 'pages#welcome'
  resources :pages
end
