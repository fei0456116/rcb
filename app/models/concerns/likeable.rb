module Likeable
  extend ActiveSupport::Concern

  included do
    has_many :likes, :as => :target
  end
end