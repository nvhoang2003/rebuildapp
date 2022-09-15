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

          private
            def author_params
              params.permit(:name, :description)
            end
      end

    end
  end
end
