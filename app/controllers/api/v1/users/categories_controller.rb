module Api
  module V1
    module Users
      class CategoriesController < ApplicationController
        def create
          @category = Category.new(category_params)
          if @category.save
            render json: {
              message: 'success'
            }
          else
            render json:{
              message: 'failed',
              validation: @category.errors.messages
            }, status: 400
          end
        end

        private
          def category_params
            params.permit(:name, :description)
          end
      end
    end
  end
end