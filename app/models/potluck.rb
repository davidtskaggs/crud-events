class Potluck < ActiveRecord::Base
  validates :name, :location, :starts_at, :user_id, presence: true
  belongs_to :user
  has_many :tickets
end
