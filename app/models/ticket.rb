class Ticket < ActiveRecord::Base
  validates :item, :user_id, :potluck_id, presence: true
  # :user_id, :potluck_id, presence: true
  belongs_to :user
  belongs_to :potluck
end
