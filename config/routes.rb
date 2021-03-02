Rails.application.routes.draw do

  root to: 'pages#home'
  devise_for :users 
  

  resources :vinyls, only: %i[index show]
  resources :renting, only: %i[index, create]

  namespace :owner do
    resources :vinyls , only: %i[new create index]
    resources :rentings, only: %i[new validate decline]
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
