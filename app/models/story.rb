class Story < ApplicationRecord
  validates :name, :author_id , presence: true
  belongs_to :author
  has_and_belongs_to_many :category, join_table: 'categorystories'
  has_and_belongs_to_many :reader, join_table: 'readerstories'
  has_many :chapter
  has_one_attached :image
  validates :image,content_type: { in: %w[image/jpeg image/gif image/png],
                                    message: "must be a valid image format" },
                   size:         { less_than: 5.megabytes,
                                    message:"should be less than 5MB" }
end
