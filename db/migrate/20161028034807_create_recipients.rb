class CreateRecipients < ActiveRecord::Migration[5.0]
  def change
    create_table :recipients do |t|
      t.string :name
      t.string :phone
      t.string :address
      t.string :identity_number
      t.text :memo

      t.timestamps
    end
  end
end
