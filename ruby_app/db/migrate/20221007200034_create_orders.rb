class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.string :status_order
      t.datetime :order_delivery_date
      t.datetime :order_date
      t.string :delivery_key

      t.timestamps
    end
  end
end
