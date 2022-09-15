class Gift < ApplicationRecord
  validates :name , presence: true, length: {maximum: 255}
  validates :score,:stock , presence: true, numericality: {greater_than: 0}
end
