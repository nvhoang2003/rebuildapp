class Readerstories < ActiveRecord::Migration[6.1]
  def change
    create_join_table :reader, :story do |t|
      t.index :reader_id
      t.index :story_id
      t.timestamps
    end
  end
end
