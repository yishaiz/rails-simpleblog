class CommentsController < ApplicationController
    def create
        byebug
        # @post = Post.find(params[:id])
        @post = Post.find(params[:post_id])
        @comments = @post.comments.create(comments_params)
              
        redirect_to post_path(@post)
    end

    private

    def comments_params
        params.require(:comment).permit(:username, :body)
    end
    
end