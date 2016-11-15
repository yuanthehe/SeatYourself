class RestaurantsController < ApplicationController
  def new
    @restaurant = Restaurant.new
  end

  def index
    if params[:search].present?
      @restaurants = Restaurant.search(params[:search]).order("name ASC")
    else
      @restaurants = Restaurant.all
    end
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)

      if @restaurant.save
        redirect_to restaurants_url
      else
        render :new
      end
  end

  def show
    @restaurant = Restaurant.find(params[:id])

    if current_user
      @review = @restaurant.reviews.build
      @reservation = @restaurant.reservations.build
    end
  end

  def edit
    @restaurant = Restaurant.find(params[:id])
  end

  def update
    @restaurant = Restaurant.find(params[:id])
    if @restaurant.update_attributes(restaurant_params)
       redirect_to restaurant_url
    else
      render :edit
    end
  end

  def destroy
    @restaurant = Restaurant.find(params[:id])
    @restaurant.delete
    redirect_to restaurants_url
  end

  # def search(search_term)
  #   results = []
  #   @restaurant.each do |r|
  #     if search_term == r.food_type || search_term == r.name
  #        results << r
  #     end
  #       return results
  #     end
  # end

  private
  def restaurant_params
    params.require(:restaurant).permit(:owner_id, :name, :capacity, :food_type, :location, :phone, :description)
  end
end
