class Setdate < ApplicationRecord
    validates :date, presence: true
    validates :date, :length =>{ :minimum => 2}
    validates :profile, presence: true
end
