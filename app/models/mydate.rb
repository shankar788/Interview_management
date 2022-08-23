class Mydate < ApplicationRecord
  belongs_to :user
  validates :ten, presence: true
  validates :year, presence: true
  validates :percentage, presence: true
  validates :twelth, presence: true
  validates :year1, presence: true
  validates :percentage1, presence: true
  validates :digree, presence: true
  validates :year2, presence: true
  validates :percentage2, presence: true
  validates :profile, presence: true
  
end

