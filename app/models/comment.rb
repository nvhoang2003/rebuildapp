class Comment < ApplicationRecord
  validates :title, presence: true, length: {maximum:255}
  validates :reader, presence :true
  belongs_to :reader
  has_and_belongs_to_many :reader, join_table: 'reader_comment'
end
