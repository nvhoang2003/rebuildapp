module Api
  module V1
    module Users
      class AuthorsController < ApplicationController
        def create
          @author = Author.new(author_params)
          if @author.save
            render json: {
              message: 'Success'
            }
          else
            render json: {
              message: 'Failded',
              validation: @author.errors.messages
            }, status: 400
          end
        end

        def index
          @authors = Author.all
          render json: @authors
        end

        def edit
          @author = Author.find(params[:id])
          render json: @author
        end
        
        def update
          @author = Author.find(params[:id])
            if @author.update(author_params)
              render json: "Update Successfully"
            else
              render json:{
                message: "Failed",
                validation: @author.errors.messages
              }, status: 400
            end
        end
        
        def destroy
          @author = Author.find(params[:id])
          if @author.destroy
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
            def author_params
              params.permit(:name, :description)
            end
      end

    end
  end
end
