class AdminController < ApplicationController
  before_action :authenticate_user!

  def index
    if not current_user.is_admin
      redirect_to "/"
    end
  end

  def users
    if not current_user.is_admin
      redirect_to "/"
    end
  end

  def rooms
    if not current_user.is_admin
      redirect_to "/"
    end
  end
end
