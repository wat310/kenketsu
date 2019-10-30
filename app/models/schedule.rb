class Schedule < ApplicationRecord
  belongs_to :user
  validates :next_date, presence: true
  validates :next_time, presence: true
end
