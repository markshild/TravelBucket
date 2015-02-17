class UserCountriesController < ApplicationController


  def create
    @user_country = current_user.user_countries.new(country_id: params[:country_id])
    if @user_country.save
      render json: {}
    else

      render json: {error: "Error processing request"}
    end
  end

  def destroy
    @user_country = current_user.user_countries.find_by({country_id: params[:country_id]})
    @user_country.destroy
    render json: {}
  end



end
