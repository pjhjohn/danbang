class AdminController < ApplicationController
  before_action :authenticate_user!

  def index
    if not current_user.is_admin
      redirect_to "/"
    else
      @user_count = User.count
      @room_count = Room.count
    end
  end

  def users
    if not current_user.is_admin
      redirect_to "/"
    else
      @users = User.all
    end
  end

  def rooms
    if not current_user.is_admin
      redirect_to "/"
    else
      @rooms = Room.all
    end
  end
end
