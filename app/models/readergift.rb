class Readergift < ApplicationRecord
  belongs_to :reader
  belongs_to :gift

  validates :reader_id, :gift_id , presence: true
end
