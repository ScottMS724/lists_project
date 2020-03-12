class ListsController < ApplicationController
    before_action :authentication_required 

    def index
        @list = List.new 
        @lists = @current_user.lists 
    end 

    def show
        @list = List.find(params[:id])
        @item = Item.new 
    end 

    def create
        user = @current_user 
        @list = user.lists.build(list_params)
        if @list.save 
            redirect_to list_url(@list)
        else 
            @lists = @current_user.lists      
            render :index 
        end 
    end 

    def destroy
        @list = List.find(params[:id]) 
        @list.destroy 

        redirect_to '/lists'
    end 

    private

        def list_params
            params.require(:list).permit(:name)
        end 

end
