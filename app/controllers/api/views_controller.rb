class Api::ViewsController < ApplicationController
  def show
    @countries = Country.all.includes(:continent)
  end

  private
    def user_params
      params.require(:user).permit(:password, :email, :name, :password_confirmation)
    end
end
