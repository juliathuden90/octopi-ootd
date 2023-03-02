class BookingsController < ApplicationController
  before_action :set_booking, only: [:edit, :update]
  before_action :set_squid, only: [:new, :create]

  def index
    @bookings = Booking.where(user: current_user)
    @my_octopuses = Squid.where(user: current_user)
    @my_octo_bookings = Booking.where(squid: @my_octopuses)
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.squid = @squid
    @booking.status = "pending"
    if @booking.save
      redirect_to bookings_path
    else
      redirect_to squid_path(@squid)
    end
  end

  def edit
  end

  def update
    if params["commit"] == "Accept"
      @booking.status = "Accept"
    else
      @booking.status = "Reject"
    end
    @booking.save
    redirect_to bookings_path
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
end
