class ItemsController < ApplicationController

  @items = Item.all

  def create
    @user = User.find(params[:user_id])
    @item = @user.items.new(item_params)
    @item.user = current_user
    if @item.save
      flash[:notice] = "Activity was saved."
      redirect_to user_path(@user)
    else
      flash[:notice] = "There was an error saving your activity. Please try again."
      redirect_to user_path(@user)
    end
  end

  private

  def item_params
    params.require(:item).permit(:name)
  end
end
