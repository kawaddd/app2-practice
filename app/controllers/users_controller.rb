class UsersController < ApplicationController
  def show
    @user =　User.find(params[:id])
    @post_images = @user.post_images.page(params[:page])
  end

  def edit
    @user = User.find(params[:id])
  end
  
  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to ユーザーの詳細ページへのパス  
    list = List.find(params[:id])
    list.update(list_params)
    redirect_to user_path(user.id)  
  end
end
