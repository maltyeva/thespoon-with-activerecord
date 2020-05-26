class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show, :edit, :update, :destroy]

  def index
    @restaurants = Restaurant.all
  end

  def show

    # http://localhost:3000/restaurants/5
  end


  def new
    # get a blank restaurant record
    @restaurant = Restaurant.new
  end

  def create
    # @restaurant = Restaurant.new(name: params[:name], address: params[:address], rating: params[:rating])
    # new record with values from form
    @restaurant = Restaurant.new(restaurant_params)

    #save record
    @restaurant.save

    #redirect to another page
    redirect_to restaurant_path(@restaurant)

  end

  def edit
    # form with restaurant info filled out
    # @restaurant = Restaurant.find(params[:id])
  end


  def update
    @restaurant.update(restaurant_params)
    # redirect to the show page
    redirect_to @restaurant
  end


  def destroy
    @restaurant.destroy
    redirect_to restaurants_path
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def restaurant_params
    # params[:restaurant] => { name: params[:name].... }
    params.require(:restaurant).permit(:name, :address, :rating)
  end

  def edit_restaurant_params
    params.require(:restaurant).permit(:rating)
  end
end
