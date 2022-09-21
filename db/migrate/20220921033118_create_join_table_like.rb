class CreateJoinTableLike < ActiveRecord::Migration[6.1]
  def change
    create_join_table :reader, :comment do |t|
      t.index :reader_id
      t.index :comment_id
      t.timestamps
    end
  end
end
