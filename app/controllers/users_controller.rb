class UsersController < ApplicationController
  before_action :authenticate_user!
  #before_action :authenticate_user, only: [:show]

  def show
  end

  private

  # def authenticate_user
  #   @user = User.find(params[:id])
  #   unless current_user == @user
  #     flash[:alert] = "You do not have permission to view this page."
  #     redirect_to current_user
  #   end
  # end
end
