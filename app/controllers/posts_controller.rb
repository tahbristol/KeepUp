class PostsController < ApplicationController
	
	def index 
		@posts = Post.all	
	end
	
	def new 
		
	end
	
	def create 
		
	end 
	
	
	private
		
		def post_params
			params.require(:post).permit(:content, :fb_id, :fb_created, :story, :res [])
		end
end