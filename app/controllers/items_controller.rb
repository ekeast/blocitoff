class ItemsController < ApplicationController

  def create
    @item = current_user.items.new(item_params)
    @new_item = Item.new

    if @item.save
      flash[:notice] = "Activity was saved."
    else
      flash[:notice] = "There was an error saving your activity. Please try again."
    end

    respond_to do |format|
      format.html
      format.js
    end
  end

  def destroy
    @item = current_user.items.find(params[:id])
    if @item.destroy
      flash[:notice] = "Activity was deleted successfully."
    else
      flash.now[:alert] = "There was an error deleting the activity."
    end
  end

  respond_to do |format|
    format.html
    format.js
  end

  private

  def item_params
    params.require(:item).permit(:name)
  end
end
