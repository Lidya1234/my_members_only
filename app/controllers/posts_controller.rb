class PostsController < ApplicationController
    before_action :require_login, only[:new , :create]
    
    def index
    end
    def new 
    end
    def create
    end
end
