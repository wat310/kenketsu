class Record < ApplicationRecord
  belongs_to :user

  # enum inspection_method: { four: 0, two: 1, component: 2 }
  enum inspection_method: { "全献血400ml": 0, "全献血200ml": 1, "成分献血": 2 }

  validates :inspection_method, presence: true
  validates :ALT, presence: true
end
