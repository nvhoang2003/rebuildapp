class AddCollumnInReaderstories < ActiveRecord::Migration[6.1]
  def change
    add_column :reader_story, :chap, :integer
    add_column :reader_story, :read_at, :datetime
  end
end
