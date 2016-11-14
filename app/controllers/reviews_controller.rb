class ReviewsController < ApplicationController
  before_action :load_restaurant
  before_action :ensure_logged_in, only: [:create, :destroy]
  
  def new
    @review = Review.new
  end

  def create
    @review = @restaurant.reviews.build(review_params)
    @review.user = current_user

    if @review.save
      redirect_to restaurant_url(@restaurant), notice: 'Review created successfully'
    else
      render 'restaurants/show'
    end
  end

  def show
    @review = Review.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
    @review = Review.find(params[:id])
    @review.delete
    redirect_to restaurant_url
  end

private
  def load_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def review_params
    params.require(:review).permit(:user_id, :restaurant_id, :content)
  end

end
