class PostsController < ApplicationController
	
	def index 
		@posts = Post.all
	end
	
	def new 
		
	end
	
	def create 
		if Post.where(fb_id: post_params[:fb_id]).blank?
			@post = Post.create(post_params)
		end
		respond_to do |format|
			format.json { render json: {post: @post}}
			format.html
		end
	end
	
	
	private
		
		def post_params
			params.require(:post).permit(:content, :fb_id, :fb_created)
		end
end
