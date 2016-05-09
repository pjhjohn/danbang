class RoomsController < ApplicationController
  def index
    read
  end

  def new
  end

  def edit
  end

  # CRUD
  def create
    redirect_to "/"
  end

  def read
    @is_oneroom = params[:is_oneroom] || true
    @gender = params[:gender] || "male"
    @location = params[:location] || 1
  end

  def update
    redirect_to "/"
  end

  def delete
    redirect_to "/"
  end
end
