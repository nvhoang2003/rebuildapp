class Gift < ApplicationRecord
  validates :name , presence: true, length: {maximum: 255}
  validates :score,:stock , presence: true, numericality: {greater_than: 0}
  has_and_belongs_to_many :reader, join_table: 'readergifts'
end
