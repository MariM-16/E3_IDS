class CreateVehicles < ActiveRecord::Migration[7.0]
  def change
    create_table :vehicles do |t|
      t.string :patente
      t.string :information
      t.string :vehicle_type
      t.references :dispatcher, foreign_key: {to_table: "users"}

      t.timestamps
    end
  end
end
