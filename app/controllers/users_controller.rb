class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      sign_in(@user)
      redirect_to "/hi"
    else
      flash.now[:errors] = @user.errors.full_messages
      render :new
    end
  end

  def show
    @countries = Country.all
  end

  private
    def user_params
      params.require(:user).permit(:password, :email, :name, :password_confirmation)
    end
  end
