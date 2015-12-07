class CreateMeals < ActiveRecord::Migration
  def change
    create_table :meals do |t|
      t.string :name
      t.datetime :start_time

      t.timestamps null: false
    end
  end
end
