# frozen_string_literal: true

class AddDeviseToReaders < ActiveRecord::Migration[6.1]
  def self.up
    create_table :readers do |t|
      ## Database authenticatable
      t.string :email,              null: false, default: ""
      t.string :encrypted_password, null: false, default: ""
      t.string :name , null: false , default: ""     
      t.integer :age , null: false , default: "0"
      t.boolean :gender
      t.string :phonenumber, null:false, default: ""
      t.boolean :ban
      t.string :address, null: false, default: ""
      t.integer :score, default: "0"

      t.timestamps
    end
  end

  def self.down
    # By default, we don't want to make any assumption about how to roll back a migration when your
    # model already existed. Please edit below which fields you would like to remove in this migration.
    raise ActiveRecord::IrreversibleMigration
  end
end
