class CreateTrackedPages < ActiveRecord::Migration[5.1]
  def change
    create_table :tracked_pages do |t|
			t.string :page_url
			t.integer :user_id
      t.timestamps
    end
  end
end
