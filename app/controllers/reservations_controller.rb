class ReservationsController < ApplicationController
  def index
<<<<<<< HEAD:app/controllers/reservation_controller.rb
    @reservation = Reservation.all
=======
    @reservations = Reservation.where (:owner_id = @owner_id)
>>>>>>> bb5c3b5f4c5baf48c1e894f198c980c9e0bc55f1:app/controllers/reservations_controller.rb
  end

  def show
    @reservation = Reservation.find(params[:id])

    if current_user
      @reservation = @reservation.reviews.build
    end
  end

  def new
    @reservation = Reservation.new
  end

  def edit
    @reservation = Reservation.find(params[:id])
  end

  def create
    @reservation = Reservation.new(reservation_params)

    if @reservation.save
      redirect_to restaurants_url(@restaurant)
    else
      render :new
    end
  end

  def update
    @reservation = Reservation.find(params[:id])

    if @reservation.update_attributes(reservation_params)
      redirect_to restaurants_url(@reservation)
    else
      render :edit
    end
  end

  def destroy
    @reservation = Reservation.find(params[:id])
    @reservation.destroy
    redirect_to restaurants_url
  end

  private
  def reservation_params
    params.require(:reservation).permit(:restaurant_id, :user_id, :size, :when)
  end
end
