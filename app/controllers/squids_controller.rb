class SquidsController < ApplicationController
  before_action :set_squid, only: [:show]
  before_action :set_user
  skip_before_action :authenticate_user!, only: [:home, :index, :show]

  def home
  end

  def index
    @squids = Squid.all
  end

  def show
  end

  def new
    @squid = Squid.new
  end

  def create
    @squid = Squid.new(squid_params)
    user = current_user
    @squid.user = user
    if @squid.save
      redirect_to squid_path(@squid)
    else
      redirect_to new_squid_path
    end
  end

  private

  def set_squid
    @squid = Squid.find(params[:id])
  end

  def squid_params
    params.require(:squid).permit(:name, :description, :price, :photo)
  end

  def set_user
    @user = current_user
  end
end
