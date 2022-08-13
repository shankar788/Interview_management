class Mydate < ApplicationRecord
  belongs_to :user
  validates :date, presence: true
  validates :ten, presence: true
  validates :year, presence: true
  validates :percentage, presence: true
  validates :twelth, presence: true
  validates :year1, presence: true
  validates :percentage1, presence: true
  validates :digree, presence: true
  validates :year2, presence: true
  validates :percentage2, presence: true
  
end

