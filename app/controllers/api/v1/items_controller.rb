class Api::V1::ItemsController < Api::ApplicationController

  before_action :set_item, only: [:show, :edit, :update, :destroy]
  def create
    item = Item.new(item_params)
    
    if item.save 
      render json: item, status: :created
    else
      render json: item.errors, status: :unprocessable_entity
    end

  end

  def update
    if @item.update(item_params)
      render json: @item, status: :accepted
    else
      render json: @item.errors, status: :unprocessable_entity
    end 

  end

  def show
    set_item
    render json: @item, status: :ok
  end

  def index
    render json: Item.all, status: :ok
  end

  def destroy
    @item.destroy 
    render json: @item, status: :accepted
  end

  def edit
  end

  def new
  end

  private

  def item_params
    params.require(:item).permit(:name, :description, :size, :price)
  end

  def set_item
    @item = Item.find(params[:id])
  end
  
end
