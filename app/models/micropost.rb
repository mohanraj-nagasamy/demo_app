class Micropost < ActiveRecord::Base
  attr_accessible :context, :user_id

  belongs_to :user

  validates :context, length: { maximum: 140, minimum: 1 }
end
