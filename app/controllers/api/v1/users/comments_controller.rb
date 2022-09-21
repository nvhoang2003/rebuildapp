module Api
  module V1
    module Users
      class CommentsController < ApplicationController
         def index
          @q = Comment.ransack("title_cont": "fuck")
          @toxic_comment = @q.result(distinct: true)
          render json: @toxic_comment
        end

        def destroy
          @comment = Comment.find(params[:id])
          if @comment.destroy
            render json: {
              message: "destroy successfuly"
            }
          else
            render json: {
              message: "destroy failed"
            }, status: 400
          end
        end
      end
    end
  end
end