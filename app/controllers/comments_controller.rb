class CommentsController < ApplicationController

  def index
    @comments = Comment.all
  end
  
  def new
    @comment = Comment.new
  end

  def show 
    @comments = @post.comments.all
    @comment = @post.comments.build
  end

  def create
    @comment = Comment.new(comment_params)

    respond_to do |format|
      if @comment.save
        format.html { redirect_to @comment, notice: 'Comment was successfully created.' }
        format.json { render :show, status: :created, location: @comment }
      else
        format.html { render :new }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
  end

  def destroy
    @comment.destroy
    respond_to do |format|
      format.html { redirect_to comments_url, notice: 'Comment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

private

  def comment_params 
          params.require(:comment).permit(:title, :content,:comment_id)
  end
end
