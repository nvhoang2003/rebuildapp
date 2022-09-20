class Author < ApplicationRecord
  validates :name, :description, presence: true
  has_many :story
  
end
