class AddProfitToOrderItems < ActiveRecord::Migration[5.0]
  def change
    add_column :order_items, :profit_rate, :decimal
    add_column :order_items, :profit, :decimal
  end
end
