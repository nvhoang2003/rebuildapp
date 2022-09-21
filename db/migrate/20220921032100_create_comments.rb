class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.string :title
      t.integer :like, null: false, default: 0
      t.references :reader, null: false, foreign_key: true  
      t.integer :repcmt
      t.references :chapter, foreign_key: true
      t.timestamps
    end
  end
end
