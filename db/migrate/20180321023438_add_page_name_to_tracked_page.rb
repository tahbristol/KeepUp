class AddPageNameToTrackedPage < ActiveRecord::Migration[5.1]
  def change
    add_column :tracked_pages, :page_name, :string
  end
end
