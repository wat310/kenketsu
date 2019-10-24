class Record < ApplicationRecord
  belongs_to :user

  enum inspection_method: { four: 0, two: 1, component: 2 }

  validates :inspection_method, presence: true
  validates :donation_day, presence: true
  validates :ALT, presence: true
  validates :GTP, presence: true
  validates :TP, presence: true
  validates :ALB, presence: true
  validates :AperG, presence: true
  validates :CHOL, presence: true
  validates :GA, presence: true
  validates :RBC, presence: true
  validates :Hb, presence: true
  validates :Ht, presence: true
  validates :MCV, presence: true
  validates :MCH, presence: true
  validates :MCHC, presence: true
  validates :WBC, presence: true
  validates :PLT, presence: true
end
