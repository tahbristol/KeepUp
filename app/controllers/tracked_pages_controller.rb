class TrackedPagesController < ApplicationController
	
	
	def index 
		
	end 
	
	def show
		@tPage = TrackedPage.find(params[:id])
	end 
	
	def destroy
		
	end 
	
	private 
	
	def tracked_page_params
		params.require(:tracked_page).permit(:page)
	end
end
