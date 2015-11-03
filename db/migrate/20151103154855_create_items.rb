class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.references :recipe, index: true, foreign_key: true
      t.references :ingredient, index: true, foreign_key: true
      t.decimal :amount
      t.string :measure

      t.timestamps null: false
    end
  end
end
