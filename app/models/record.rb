class Record < ApplicationRecord
  belongs_to :user

  enum inspection_method: { four: 0, two: 1, component: 2 }

  validates :inspection_method, presence: true
  validates :donation_day, presence: true
  validates :ALT, presence: true, numericality: {only_integer: true}
  validates :GTP, presence: true, numericality: {only_integer: true}
  validates :TP, presence: true, numericality: true
  validates :ALB, presence: true, numericality: true
  validates :AperG, presence: true, numericality: true
  validates :CHOL, presence: true, numericality: {only_integer: true}
  validates :GA, presence: true, numericality: true
  validates :RBC, presence: true, numericality: {only_integer: true}
  validates :Hb, presence: true, numericality: true
  validates :Ht, presence: true, numericality: true
  validates :MCV, presence: true, numericality: true
  validates :MCH, presence: true, numericality: true
  validates :MCHC, presence: true, numericality: true
  validates :WBC, presence: true, numericality: {only_integer: true}
  validates :PLT, presence: true, numericality: true
end
