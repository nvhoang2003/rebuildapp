class CreateReadergifts < ActiveRecord::Migration[6.1]
  def change
    create_table :readergifts do |t|
      t.references :reader, null: false, foreign_key: true
      t.references :gift, null: false, foreign_key: true

      t.timestamps
    end
  end
end
