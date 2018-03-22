class TrackedPage < ApplicationRecord
	has_many :posts
	belongs_to :user

	def page_resource 
		self.page_url.match('.com\/(.+)\/?')[1].split("/")[0]
	end 

	#need to account for 'groups' pages, pages with no name only id
	def getFeed
			response = HTTP.get("https://graph.facebook.com/v2.12/#{self.page_resource}/feed?access_token=#{ENV['FB_ACCESS_TOKEN']}")
			feedHash = JSON.parse(response.body)
			posts = feedHash["data"].collect do |feed|
					fb_created = Date.parse(feed["created_time"])
					content = feed["message"]
					story = feed["story"]
					fb_id = feed["id"]
					oldPost = self.posts.where(fb_id: fb_id)
					
					if oldPost.empty? && !content.nil?
						self.posts.create(fb_id: fb_id, content: content, fb_created: fb_created.strftime('%m/%d/%Y'), story: story)
					end
			end 	
	end 
end
