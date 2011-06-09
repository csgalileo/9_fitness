class CreateAlgos < ActiveRecord::Migration
  def self.up
    create_table :algos do |t|
      t.string :algo

      t.timestamps
    end
  end

  def self.down
    drop_table :algos
  end
end
