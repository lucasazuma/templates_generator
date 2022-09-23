class Dad < ApplicationRecord
  has_many :shirts
  has_many :boards
  has_many :vegetables
  has_many :winds
  has_many :questions
  has_many :elastics
end
