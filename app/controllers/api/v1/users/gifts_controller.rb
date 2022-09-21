module Api
  module V1
    module Users
      class GiftsController < ApplicationController
        def create
          @gift = Gift.new(gift_params)
          if @gift.save
            render json: {
              message: "success"
            }
          else
            render json: {
              message: "failed",
              validation: @gift.errors.messages
            }, status: 400
          end
        end

        def index
          @gifts = Gift.all
          render json: @gifts
        end

        def edit
          @gift = Gift.find(params[:id])
          render json: @gift
        end
        
        def update
          @gift = Gift.find(params[:id])
            if @gift.update(gift_params)
              render json: "Update Successfully"
            else
              render json:{
                message: "Failed",
                validation: @gift.errors.messages
              }, status: 400
            end
        end
        
        def destroy
          @gift = Gift.find(params[:id])
          if @gift.destroy
            render json: {
              message: "destroy successfuly"
            }
          else
            render json: {
              message: "destroy failed"
            }, status: 400
          end
        end
        

        private
          def gift_params
            params.permit(:name, :score, :stock)
          end
      end
    end
  end
end