class Api::ViewsController < ApplicationController
  def show
    @countries = Country.includes(:continent)
  end

  def map
    @visited = current_user.countries
  end

  def leaders
    @top = User.select("users.name, COUNT(user_countries.id) AS number")
      .joins(:user_countries).group("users.name")
      .order("COUNT(user_countries.id) DESC").limit(10)

    @africa = User.select("users.name, COUNT(user_countries.id) AS number")
      .where("countries.continent_id = 1").joins(user_countries: :country)
      .group("users.name").order("COUNT(user_countries.id) DESC").limit(10)

    @asia = User.select("users.name, COUNT(user_countries.id) AS number")
      .where("countries.continent_id = 6").joins(user_countries: :country)
      .group("users.name").order("COUNT(user_countries.id) DESC").limit(10)

    @europe = User.select("users.name, COUNT(user_countries.id) AS number")
      .where("countries.continent_id = 4").joins(user_countries: :country)
      .group("users.name").order("COUNT(user_countries.id) DESC").limit(10)

    @namerica = User.select("users.name, COUNT(user_countries.id) AS number")
      .where("countries.continent_id = 2").joins(user_countries: :country)
      .group("users.name").order("COUNT(user_countries.id) DESC").limit(10)

    @samerica = User.select("users.name, COUNT(user_countries.id) AS number")
      .where("countries.continent_id = 3").joins(user_countries: :country)
      .group("users.name").order("COUNT(user_countries.id) DESC").limit(10)

    @oceania = User.select("users.name, COUNT(user_countries.id) AS number")
      .where("countries.continent_id = 5").joins(user_countries: :country)
      .group("users.name").order("COUNT(user_countries.id) DESC").limit(10)
  end
end
