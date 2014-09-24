class CreateSeries < ActiveRecord::Migration
  def change
    create_table :series do |t|
      t.string :nombre
      t.integer :temporadas
      t.text :descripcion
      t.string :imagen
      t.boolean :en_transmision

      t.timestamps
    end
  end
end
