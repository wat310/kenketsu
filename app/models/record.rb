class Record < ApplicationRecord
  belongs_to :user

  enum inspection_method: { four: 0, two: 1, component: 2 }

  validates :inspection_method, presence: true
  validates :ALT, presence: true
end
