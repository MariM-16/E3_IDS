class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.string :message
      t.references :order, foreign_key: true
      t.references :buyer, foreign_key: {to_table: "users"}

      t.timestamps
    end
  end
end
