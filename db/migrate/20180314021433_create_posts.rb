class CreatePosts < ActiveRecord::Migration[5.1]
	def change
		create_table :posts do |t|
			t.string :content
			t.string :fb_id
			t.datetime :fb_created
			t.timestamps
		end
	end
end
