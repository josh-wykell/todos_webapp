class ListsController < ApplicationController
  before_action :set_list, only: [:show, :edit, :update, :destroy]

  def index
    @lists = List.all
  end

  def create
    @list = List.create(list_params)
    if @list.save
      redirect_to list_path(@list), notice: 'Your list was successfuly created'
    else 
      render :new
    end 
  end

  def new
    @list = List.new
  end

  def update
    @list = List.find(params[:id])
    if @list.update(list_params)
      redirect_to@list, notice: 'Review was successfuly updated' 
    else
      render :edit
    end
  end

  def destroy
    @list.destroy
    redirect_to lists_path(@list), notice: 'List Deleted'
  end

  def show
    @list = List.find(params[:id])
    @items = @list.items.order(:created_at)
  end

  private

    def set_list
      @list = List.find(params[:id])
    end

    def list_params
      params.require(:list).permit(:name)
    end

end
