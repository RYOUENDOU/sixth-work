Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

    devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations',
    passwords: 'users/passwords'
  }

    resources :users, except: [:index, :show, :mypage, :admin_purchase_list]   
    get '/users' => 'users#index', as: 'index' 
    get '/users/:id' => 'users#show', as: 'show'
    get '/users/mypage/:id' =>'users#mypage', as:'mypage'
    get '/users/admin_purchase_list/:id' =>'users#admin_purchase_list', as:'admin_purchase_list'

     resources :products do
        get 'category'
     end
     
        #　カート内のアクション定義
     post '/add_item' => 'carts#add_item'
     get '/add_item' => 'carts#show'
     post '/update_item' => 'carts#update_item'
     delete '/delete_item' => 'carts#delete_item'

     # チェックアウトコントローラー内のアクション定義
     # post '/checkout' => 'checkout#purchase'
     get '/checkout' => 'checkout#order'
     get '/address' => 'checkout#address'
     post '/complete' => 'checkout#complete', as: 'complete'
     get '/purchase_list/:id' => 'checkout#purchase_list', as: 'purchase_list'

     root 'products#index'


  	# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
