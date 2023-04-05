class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.text :user
      t.text :phone
      t.text :address
      t.text :order

      t.timestamps
    end
  end
end
