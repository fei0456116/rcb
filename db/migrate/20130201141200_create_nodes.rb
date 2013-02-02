class CreateNodes < ActiveRecord::Migration
  def change
    create_table :nodes do |t|
      t.string :name
      t.string :summary
      t.integer :topics_count, :default => 0
      t.string :section_id
      t.timestamps
    end
  end
end
