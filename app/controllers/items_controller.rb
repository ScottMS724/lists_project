class ItemsController < ApplicationController

  def create
    @list = List.find(params[:list_id])
    @item = @list.items.build(item_params)

    if @item.save
      redirect_to list_path(@list)
    else 
      render "lists/show"
    end 
  end

  def update 
    @item = Item.find(params[:id])
    if @item.update(item_params)
      redirect_to list_item_url
    else
      redirect_to list_path(@item.list)
    end 
  end 

  def show
    @item = Item.find(params[:id])
  end

  def edit
    @item = Item.find(params[:id])
  end 

  def edit_join
    @item = Item.find(params[:id]) 
  end 

  def destroy
    @item = Item.find(params[:id]) 
    @item.destroy 

    redirect_to list_path(@item.list) 
  end 

  private
    
    def item_params 
      params.require(:item).permit(:description, :status, :category_ids => [], :categorization_ids => [], :categorizations_attributes => {})
    end 

end

