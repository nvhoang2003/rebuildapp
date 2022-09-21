class Chapter < ApplicationRecord
  validates :name, :story, presence :true
  belongs_to :story
end
