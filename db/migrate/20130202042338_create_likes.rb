class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
      t.references :target, :polymorphic => true
      t.integer :user_id
      t.timestamps
    end
  end
end
