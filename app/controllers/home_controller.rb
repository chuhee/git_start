class HomeController < ApplicationController
    def index
    end
    
    def write
       new_post=Post.new
       new_post.name=params[:username]
       new_post.content=params[:content]
       new_post.save 
       redirect_to '/list'
    end
    
    def list
        @every_post=Post.all
    end
end