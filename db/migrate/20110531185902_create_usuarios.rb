class CreateUsuarios < ActiveRecord::Migration
  def self.up
    create_table :usuarios do |t|
      t.string :nombre
      t.string :nickname
      t.integer :peso
      t.integer :edad
      t.integer :altura
	  #t.integer :user_id
      t.timestamps
	  t.integer :user_id
	  t.references :user
    end
  end

  def self.down
    drop_table :usuarios
  end
end
