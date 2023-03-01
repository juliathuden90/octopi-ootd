class BookingsController < ApplicationController
  before_action :set_user, only: [:create]
  before_action :set_booking, only: [:create]

  def index
  end

  def create
  end

  def new
    @booking = Booking.new
  end

  def update
  end

  def edit
  end

  private

  def set_squid
    @squid = Squid.find(params[:squid_id])
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:rent_date)
  end

  def set_user
    @user = current_user
  end
end
