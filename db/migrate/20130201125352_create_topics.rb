class CreateTopics < ActiveRecord::Migration
  def change
    create_table :topics do |t|
      t.string :title
      t.text :body
      t.text :body_html
      t.integer :replies_count, :default => 0
      t.integer :node_id
      t.integer :who_deleted
      t.integer :user_id
      t.integer :likes_count, :default => 0
      t.timestamps
    end
  end
end
