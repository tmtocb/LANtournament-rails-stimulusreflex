class ItemsController < ApplicationController
  before_action :set_list
  before_action :set_item, only: [:show, :edit, :update, :destroy]

  def index
    @items = @list.items
  end

  def show
  end

  def new
    @item = @list.items.build
  end

  def edit
  end

  def create
    @item = @list.items.build(item_params)

    if @item.save
      redirect_to(@item.list)
    else
      render action: 'new'
    end
  end

  def update
    if @item.update_attributes(item_params)
      redirect_to([@item.list, @item], notice: 'Item was successfully updated.')
    else
      render action: 'edit'
    end
  end

  def destroy
    @item.destroy

    redirect_to list_items_url(@list)
  end

  private
    def set_list
      @list = List.find(params[:list_id])
    end

    def set_item
      @item = @list.items.find(params[:id])
    end

    def item_params
      params.require(:item).permit(:description, :completed, :completed_at, :list_id)
    end
end
