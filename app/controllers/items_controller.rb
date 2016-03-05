class ItemsController < ApplicationController

  @items = Item.all

  def create
    @item = current_user.items.new(item_params)
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
