class PostsController < ApplicationController
    before_action :require_login, only: [:new , :create]
    
    def index
     @post= Post.all
    end
    def new 
        @post= Post.new
    end
    def create
        @post = current_user.posts.new(post_params)
        if @post.save
          redirect_to posts_path
        else
          render :new
        end
      end
    
      def post_params
        params.require(:post).permit(:body)
      end
end
