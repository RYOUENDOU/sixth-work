Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  get 'users/index'

  get 'users/show'

    devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations',
    passwords: 'users/passwords'
  }
     resources :users
     resources :products
     root 'products#index'
  	# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
