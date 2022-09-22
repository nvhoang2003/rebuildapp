class Gift < ApplicationRecord
  validates :name , presence: true, length: {maximum: 255}
  validates :score,:stock , presence: true, numericality: {greater_than: 0}
  has_and_belongs_to_many :reader, join_table: 'readergifts'
  has_one_attached :image

  validates :image,content_type: {  in: %w[image/jpeg image/gif image/png],
                                    message: "must be a valid image format" },
                    size:         { less_than: 5.megabytes,
                                    message:"should be less than 5MB" }
end
