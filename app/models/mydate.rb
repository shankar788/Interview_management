class Mydate < ApplicationRecord
  belongs_to :user
  validates :ten, presence: true
end
