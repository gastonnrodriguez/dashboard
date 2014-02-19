class CreateTipoIncidentes < ActiveRecord::Migration
  def change
    create_table :tipo_incidentes do |t|
      t.string :nombre
      t.string :descripcion

      t.timestamps
    end
  end
end
