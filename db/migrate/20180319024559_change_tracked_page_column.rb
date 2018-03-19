class ChangeTrackedPageColumn < ActiveRecord::Migration[5.1]
  def change
		rename_column :tracked_pages, :page_url, :page
  end
end
