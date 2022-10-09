class CreateAddresses < ActiveRecord::Migration[7.0]
  def change
    create_table :addresses do |t|
      t.string :comune
      t.string :street
      t.string :number_address
      t.string :extra_information

      t.timestamps
    end
  end
end
