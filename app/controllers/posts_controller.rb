class PostsController < ApplicationController

    def index
       
    end

    def new
    
    end

    def create
        # byebug
        render plain: params[:post].inspect
    end
    
end
