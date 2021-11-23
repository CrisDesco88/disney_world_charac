class CreatePersonajes < ActiveRecord::Migration[6.1]
  def change
    create_table :personajes do |t|
      t.string :imagen
      t.string :nombre
      t.integer :edad
      t.decimal :peso, precision: 10, scale: 2
      t.text :historia
      t.string :peliserie

      t.timestamps
    end
  end
end
