Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #
  devise_scope :user do
    root to: "devise/sessions#new"
  end


  authenticated :user do


  resources :users
  resources  :profiles
  resources :engineers
  resources :areas
  resources :designations
  resources :modalities
  resources :companies
  resources :items
  resources :types
  resources :themes
  resources :concepts
  resources :responsible_functions
  resources :workers
  resources :admin_controls



  resources :states do
    collection { post :import }
  end

  resources :cities do
    collection { post :import }
  end



  end

end


