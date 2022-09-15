class AddUnique < ActiveRecord::Migration[6.1]
  def change
    add_index :readers, :name, unique: true 
  end
end
