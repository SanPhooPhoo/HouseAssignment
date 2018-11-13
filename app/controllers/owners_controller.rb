class OwnersController < ApplicationController
    def create
        @house = House.find(params[:house_id])
        @owner = @house.owners.create(owner_params)
        redirect_to house_path(@house)
      end
      def destroy
        @house = House.find(params[:house_id])
        @owner = @house.owners.find(params[:id])
        @owner.destroy
        redirect_to house_path(@house)
      end
     
      private
        def owner_params
          params.require(:owner).permit(:Name, :Email, :Phone)
        end
end

