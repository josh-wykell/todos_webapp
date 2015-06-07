class ItemsController < ApplicationController
  before_action :set_list, only: [:show, :edit, :update, :destroy]

  def index
    @items = Item.all
  end

  private

    def set_item
      @item = Item.find(params[:id])
    end

    def list_params
      params.require(:list).permit(:task, :due_date, :is_complete, :list_id)
    end

end
