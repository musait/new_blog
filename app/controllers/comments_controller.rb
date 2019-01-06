class CommentsController < ApplicationController
    before_action :authenticate_user!, except: [:index]
    before_action :find_commentable

      def new
        @comment = Comment.new
      end

      def create
        @comment = @commentable.comments.new(comment_params)
        @comment.save
        redirect_back(fallback_location: root_path, notice: "Comment was added successfully")
      end

      private

      def comment_params
        params.require(:comment).permit(:body)
      end

      def find_commentable
        @commentable = Comment.find_by_id(params[:comment_id]) if params[:comment_id]
        @commentable = Story.find_by_id(params[:story_id]) if params[:story_id]
      end

end
