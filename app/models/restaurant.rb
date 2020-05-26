class Restaurant < ApplicationRecord
  validates :name, presence: true
  validates :name, uniqueness: true

  validates :rating, inclusion: { in: [1,2,3,4,5]}
end
