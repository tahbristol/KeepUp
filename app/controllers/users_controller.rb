class UsersController < ApplicationController
	
	def new 
		@user = User.new
	end 
	
	def show 
		@tracked_page = TrackedPage.new
	end 
	
	def create 
	end
end
