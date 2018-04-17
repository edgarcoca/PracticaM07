class CreateZonas < ActiveRecord::Migration[5.1]
  def change
    create_table :zonas do |t|
      t.string :nom
      t.string :clima
      t.integer :temperatura
      t.integer :humitat

      t.timestamps
    end
  end
end
