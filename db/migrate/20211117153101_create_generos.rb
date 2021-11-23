class CreateGeneros < ActiveRecord::Migration[6.1]
  def change
    create_table :generos do |t|
      t.string :nombre
      t.string :imagen
      t.string :peli_serie_asoc

      t.timestamps
    end
  end
end
