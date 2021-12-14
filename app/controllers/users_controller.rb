class UsersController < ApplicationController
  before_action :find_user, only: [:show, :edit, :update, :destroy]

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @user = find_user
  end

  def edit
    @user = find_user
  end

  def update
    @user = find_user
    @user.update(user_params)
    redirect_to user_path(@user)
  end

  def destroy
      @user = find_user

      if @user.present?
        @user.destroy
        redirect_to users_url
      else
        redirect_to users_url
      end
  end

private
  def find_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :birthday)
  end
end
