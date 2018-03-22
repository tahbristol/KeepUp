class ChangeTrackedPageColumnName < ActiveRecord::Migration[5.1]
  def change
    rename_column :tracked_pages, :page, :page_url
  end
end
