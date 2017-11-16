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
     resources :categories, only: [:index, :show]
     #　カート内のアクション定義
     post '/add_item' => 'carts#add_item'
     get '/add_item' => 'carts#show'
     post '/update_item' => 'carts#update_item'
     delete '/delete_item' => 'carts#delete_item'

     root 'products#index'
  	# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
