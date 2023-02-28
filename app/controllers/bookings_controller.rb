class BookingsController < ApplicationController
  before_action :set_user
  
  def index
  end

  def new
  end

  def create
  end

  def update
  end

  def edit
  end

  private

  def set_user
    @user = current_user
  end
end
