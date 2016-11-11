class ReviewsController < ApplicationController
  def new
    @review = Review.new
  end

  def create
    @review = Review.new
    if @review.save
      redirect_to restaurant_url
    else
      redirect_to restaurant_url
    end
  end

  def show
    @review = Review.find(params[:user_id, :restaurant_id])
  end

  def edit
  end

  def update
  end

  def destroy
    @review = Review.find(params[:user_id, :restaurant_id])
    @review.delete
    redirect_to restaurant_url
  end
end
