class ItemsController < ApplicationController
  before_action :set_item, only: [:show, :edit, :update, :destroy]

  def create
    @list = List.find(params[:list_id])
    @list.items.create(item_params)
    redirect_to @list, notice: 'Item Added'
  end

  def new
    @item = Item.new
  end

  def update

  end

  # def complete
  #   @list = List.find(params[:list_id])
  #   @list.items.update_attributes(is_complete: true)
  #   redirect_to list_path notice: "Item Completed"
  # end
  def complete
    @list = List.find(params[:list_id])
    @item = Item.find(params[:id])
    @item.update_attributes(is_complete: true)
    redirect_to list_path(@list), notice: "Item completed"
  end

  def destroy
    @list = List.find(params[:list_id])
    @item = Item.find(params[:id])
    @item.destroy
    redirect_to list_path(@list), notice: 'Item Deleted'
  end

  private

  def set_item
    @item = Item.find(params[:id])
  end

  def item_params
    params.require(:item).permit(:task, :due_date, :is_complete, :list_id)
  end
end
