class Category < ApplicationRecord
  validates :name, :description , presence: true
  has_and_belongs_to_many :story, join_table: 'categorystories'
  has_one_attached :image

  validates :image,content_type: { in: %w[image/jpeg image/gif image/png],
                                    message: "must be a valid image format" },
                   size:         { less_than: 5.megabytes,
                                   message:"should be less than 5MB" }
end
