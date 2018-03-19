class AddTrackedPageToUser < ActiveRecord::Migration[5.1]
  def change
		add_column :users, :tracked_page_id, :integer
  end
end
