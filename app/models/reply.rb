class Reply < ActiveRecord::Base
  include Likeable
  
  belongs_to :topic, :counter_cache => true, :touch => true
  belongs_to :user
  
  validates_presence_of :body
end
