class TrackedPage < ApplicationRecord
	has_many :posts
	belongs_to :user

 
	def getFeed(trackedPage)
			response = HTTP.get("https://graph.facebook.com/v2.12/#{self.page}/feed?access_token=#{ENV['FB_ACCESS_TOKEN']}")
			feedHash = JSON.parse(response.body)
			trackedPage = TrackedPage.find(trackedPage)
			posts = feedHash["data"].collect do |feed|
					fb_created = Date.parse(feed["created_time"])
					posts = content = feed["message"]
					story = feed["story"]
					fb_id = feed["id"]
					oldPost = trackedPaged.posts.where(fb_id: fb_id)
					if oldPost.nil? && !content.nil?
						self.posts.build(fb_id: fb_id, content: content, fb_created: fb_created.strftime('%m/%d/%Y'), story: story)
					end
			end 
			binding.pry
			
	end 
end
