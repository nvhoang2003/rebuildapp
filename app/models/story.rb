class Story < ApplicationRecord
  validates :name, :author_id , presence: true
  belongs_to :author
  has_and_belongs_to_many :category, join_table: 'categorystories'
end
