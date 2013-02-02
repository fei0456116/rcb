class Node < ActiveRecord::Base
  validates :section,  :presence => true
  validates :name,     :presence => true, :uniqueness => true
  
  has_many :topics
  belongs_to :section, :touch => true
end
