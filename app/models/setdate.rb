class Setdate < ApplicationRecord
    validates :date, presence: true
    validates :date, :length =>{ :minimum => 2}
end
