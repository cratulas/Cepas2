Rails.application.routes.draw do
  resources :oenologists
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  resources :strains
  resources :wines
  root "wines#index"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
