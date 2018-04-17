class CreateAnimals < ActiveRecord::Migration[5.1]
  def change
    create_table :animals do |t|
      t.string :nom
      t.string :raza
      t.references :zona, foreign_key: true
      t.integer :any_naixement
      t.references :cuidador, foreign_key: true

      t.timestamps
    end
  end
end
