class TrackedPagesController < ApplicationController
	
	
	def index 
		
	end 

	def create 
		
		current_user.tracked_pages.create(tracked_page_params)

		redirect_to user_path current_user
	end 
	
	def show
		@tPage = TrackedPage.find(params[:id])
		@tPage.getFeed
	end 
	
	def destroy
		@tPage = TrackedPage.find(params[:id])
		@tPage.destroy
		redirect_to user_path(current_user)
	end 
	
	private 
	
	def tracked_page_params
		params.require(:tracked_page).permit(:page_name, :page_url)
	end
end
