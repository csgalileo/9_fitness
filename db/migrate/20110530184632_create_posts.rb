class CreatePosts < ActiveRecord::Migration
  def self.up
    create_table :posts do |t|
	t.integer :usuario_id
      t.string :title
      t.text :body
		t.references :usuario
      t.timestamps
    end
  end

  def self.down
    drop_table :posts
  end
end
