class HomeController < ApplicationController
  def index
    if user_signed_in?
      redirect_to "/rooms"
    else
      @rooms_oneroom = Room.where(is_oneroom: true).limit(6)
      @rooms_not_oneroom = Room.where(is_oneroom: false).limit(6)
    end
  end
end
