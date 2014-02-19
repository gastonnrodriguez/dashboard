class CreatePrioridades < ActiveRecord::Migration
  def change
    create_table :prioridades do |t|
      t.string :nombre
      t.string :descripcion

      t.timestamps
    end
  end
end
