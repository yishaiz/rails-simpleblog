class CommentsController < ApplicationController
    http_basic_authenticate_with name: 'rails', password: '1234', except: [:destroy]

    def create
        byebug
        # @post = Post.find(params[:id])
        @post = Post.find(params[:post_id])
        @comments = @post.comments.create(comments_params)
              
        redirect_to post_path(@post)
    end

    def destroy
        @post = Post.find(params[:post_id])
        @comment = @post.comments.find(params[:id])
        @comment.destroy

        redirect_to post_path(@post)
    end

    private

    def comments_params
        params.require(:comment).permit(:username, :body)
    end
    
end
