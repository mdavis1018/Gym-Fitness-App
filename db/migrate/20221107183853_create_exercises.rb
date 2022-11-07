class CreateExercises < ActiveRecord::Migration[7.0]
  def change
    create_table :exercises do |t|
      t.string :name
      t.text :description
      t.string :image_url
      t.integer :category_id

      t.timestamps
    end
  end
end
