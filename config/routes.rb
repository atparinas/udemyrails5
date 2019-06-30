Rails.application.routes.draw do
  resources :portfolios
  # resources :portfolios, except: [:show]
  # get 'portfolio/:id', to: 'portfolios#show'
  get 'pages/home'
  get 'pages/about'
  get 'pages/contact'
  resources :blogs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
