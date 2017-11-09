class UsersController < ApplicationController
  add_breadcrumb 'トップ', :products_path	 
  add_breadcrumb 'マイページ', :user_path

  def index
  	@users = User.all
  end

  def show
  	@user = User.find(params[:id])		
  end
end
