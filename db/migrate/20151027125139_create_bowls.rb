class CreateBowls < ActiveRecord::Migration
  def change
    create_table :bowls do |t|
    	t.belongs_to :recipe, index: true
    	t.belongs_to :ingredient, index: true

      t.timestamps null: false
    end
  end
end
