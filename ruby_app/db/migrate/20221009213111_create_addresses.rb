class CreateAddresses < ActiveRecord::Migration[7.0]
  def change
    create_table :addresses do |t|
      t.string :commune
      t.string :street
      t.string :number_address
      t.string :extra_information

      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
