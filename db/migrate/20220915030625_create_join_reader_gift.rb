class CreateJoinReaderGift < ActiveRecord::Migration[6.1]
  def change
    create_join_table :reader, :gift do |t|
      t.index :reader_id
      t.index :gift_id
      t.timestamps
    end
  end
end
