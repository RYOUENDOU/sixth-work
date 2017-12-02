class UsersController < ApplicationController
  add_breadcrumb 'トップ', :products_path	 
  add_breadcrumb 'マイページ', :user_path
  add_breadcrumb '購入ページ', :users_mypage_path
   #has_many :carts, dependent: :destroy

  def index
  	@users = User.all
  end

  def show
  	@user = User.find(params[:id])		
  end

  def mypage
    @user = User.find(params[:id])
    @order_products = @user.order_products
    .includes(:order_products)  
  end

  def admin_purchase_list 
    @user = User.find(params[:id])
    @order_products = OrderProduct.all
  end


end


