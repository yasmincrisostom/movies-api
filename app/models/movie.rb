class Movie < ApplicationRecord
  validates :id, uniqueness: true
end
