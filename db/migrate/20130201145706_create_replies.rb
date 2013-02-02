class CreateReplies < ActiveRecord::Migration
  def change
    create_table :replies do |t|
      t.text :body
      t.string :source
      t.integer :topic_id
      t.integer :likes_count, :default => 0
      t.integer :user_id
      t.timestamps
    end
  end
end
