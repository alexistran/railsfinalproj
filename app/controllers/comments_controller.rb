class CommentsController < ApplicationController
	before_filter :authenticate_user!
	def new
		@comment = Comments.new
	end

	def destroy
	    @post = Post.find(params[:post_id])
	    @comment = @post.comments.find(params[:id])
	    if current_user.id == @comment.user_id
			@comment.destroy
		end
	    redirect_to post_path(@post)
    end

	def create
	   @post = Post.find(params[:post_id])
	   @comment = @post.comments.create(comment_params)
	   @comment.user_id = current_user.id
	   redirect_to post_path(@post)
	end
	 
	private

    def comment_params
       params.require(:comment).permit(:commenter, :body)
    end

end
