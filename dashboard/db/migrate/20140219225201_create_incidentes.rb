class CreateIncidentes < ActiveRecord::Migration
  def change
    create_table :incidentes do |t|
      t.string :asunto
      t.string :descripcion
      t.string :responsable

      t.timestamps
    end
  end
end
