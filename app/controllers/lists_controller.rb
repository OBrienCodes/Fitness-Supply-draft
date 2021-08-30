class ListsController < ApplicationController

    def show 
        list = List.find(params[:id])
        render json:list 
    end 

    # def destroy 
    # end 

end
