module Api
  module V1
    module Users
      class ReadersController < ApplicationController
        def index
          @readers = Reader.all
          render json: @readers 
        end
      end
    end
  end
end