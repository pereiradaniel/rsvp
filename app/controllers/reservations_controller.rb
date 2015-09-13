class ReservationsController < ApplicationController
def index
    @reservations = Reservation.all
  end

  def show
    @reservation = Reservation.find(params[:id])
  end

  def new
    @reservation = Reservation.new
  end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @reservation = @restaurant.reservations.create(reservation_params)
    @reservation.user = current_user
    if @reservation.save
      redirect_to user_path(session[:user_id])
    else
      render restaurant_url(@restaurant)
    end
  end

  def edit
    @reservation = Reservation.find(params[:id])
  end

  def update
    @reservation = Reservation.find(params[:id])

    if @reservation.update_attributes(reservation_params)
      redirect_to reservation_path(@reservation)
    else
      render :edit
    end
  end

  def destroy
    @reservation = Reservation.find(params[:id])
    @reservation.destroy
    redirect_to reservations_path
  end

  private
  def reservation_params
    params.require(:reservation).permit(:date_time, :party_size, :user_id, :restaurant_id)
  end

end