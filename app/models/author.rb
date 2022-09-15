class Author < ApplicationRecord
  validates :name, :description, presence: true
end
