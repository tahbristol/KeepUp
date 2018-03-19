class AddTrackedPageToPost < ActiveRecord::Migration[5.1]
  def change
		add_column :posts, :tracked_page_id, :integer
  end
end
