class UsersController < ApplicationController

  def edit
  end

  def show
    user = User.find(show_params[:id])
    @name = user.name
    @posts = user.posts.page(params[:page]).per(5).order('created_at DESC')
    # user = User.find(show_params[:id])
    # @nickname = user.nickname
    # @tweets = Tweet.where(user_id: user.id).page(params[:page]).per(5).order('created_at DESC')  
  end

  def update
    if current_user.update(user_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email)
  end
end
