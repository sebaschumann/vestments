class AdministratorsController < ApplicationController
  before_action :authenticate_user!

  def index
    @users = User.all
  end

  def toggle_admin
    @user = User.where(id: params[:id]).first

    # "One-Liner" IF Statement
    (@user.admin == (nil || false)) ? @user.admin = true : @user.admin = false
    # # Replaces this code
    # if @user.admin == (nil || false)
    #   @user.admin = true
    # else
    #   @user.admin = false
    # end

    @user.save
    redirect_to administrators_url
  end

end
