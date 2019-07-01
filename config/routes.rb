Rails.application.routes.draw do

  resources :portfolios, except: [:show]
  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'

  # use the /about route
  get  'about', to: 'pages#about'

  # use /contacts
  get 'contact', to: 'pages#contact'

  resources :blogs do
    member do 
      get :toggle_status
    end
  end

  # set the root directory to pages controller home action
  root to: 'pages#home'
end
