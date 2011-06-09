class CreateRutinas < ActiveRecord::Migration
  def self.up
    create_table :rutinas do |t|
      t.string :nombre
      t.string :dia
      t.string :musculo
      t.text :descripcion
	  t.integer :usuario_id
	  t.references :usuario
      t.timestamps
    end
  end

  def self.down
    drop_table :rutinas
  end
end
