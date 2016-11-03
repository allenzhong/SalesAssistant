class CreateOrderHistories < ActiveRecord::Migration[5.0]
  def change
    create_table :order_histories do |t|
      t.references :order, foreign_key: true
      t.integer :status
      t.text :history

      t.timestamps
    end
  end
end
