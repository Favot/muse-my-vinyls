Rails.application.routes.draw do
  # all visitor
  root to: 'pages#home'
  devise_for :users 
  
  #  As renter 
  resources :vinyls, only: %i[index show] do 
    resources :rentings, only: [:create]
  end
  resources :rentings, only: %i[index]


  #  As owner 
  namespace :owner do
    resources :vinyls , only: %i[new create index]
    resources :rentings, only: %i[index] do
      menber do
        patch :validate 
        patch :decline
      end
    end
  end

end
