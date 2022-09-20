module Api
  module V1
    module Users
      class ReadersController < ApplicationController
        def index
          @q = Reader.ransack(params[:q])
          @readers = @q.result(distinct: true)
          render json: @readers

          # render 'abc'
        end

        # private
        #   params 
      end
    end
  end
end