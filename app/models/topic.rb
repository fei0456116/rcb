class Topic < ActiveRecord::Base
  include Likeable
  
  belongs_to :user
  belongs_to :node
  has_many :replies
  
  validates :user_id,     :presence => true
  validates :title  ,     :presence => true
  validates :body,        :presence => true
  validates :node_id,     :presence => true
end
