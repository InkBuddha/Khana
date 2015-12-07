class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
			t.string :title
    	t.text :description
    	t.references :user, index: true, foreign_key: true
    	t.string :cook_time
    	t.string :prep_time
    	t.string :origin
    	t.integer :serving

      t.timestamps null: false
  	end
    add_index :recipes, [:user_id, :created_at]
  end
end
