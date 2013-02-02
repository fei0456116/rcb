class Like < ActiveRecord::Base
  belongs_to :target, :polymorphic => true, :counter_cache => true
  belongs_to :user 
  
  validates_presence_of :target_id, :target_type
  
end
