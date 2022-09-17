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
              message: "failed"
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