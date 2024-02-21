class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, length: { minimum: 5 }, presence: true
  validates :rating, presence: true, numericality: {  only_integer: true,
                                                      in: (0..5) }
end
