class CreateSeries < ActiveRecord::Migration
  def change
    create_table :series do |t|
      t.string :nombre
      t.text :descripcion
      t.boolean :en_transmision

      t.timestamps
    end
  end
end
