class Category < ApplicationRecord
  validates :name, :description , presence: true
  has_and_belongs_to_many :story, join_table: 'categorystories'
end
