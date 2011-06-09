class CreateDietas < ActiveRecord::Migration
  def self.up
    create_table :dietas do |t|
      t.string :nombre
      t.string :dia
      t.text :descripcion
	  t.integer :usuario_id
	  t.references :usuario
      t.timestamps
    end
  end

  def self.down
    drop_table :dietas
  end
end
