class CreatePayments < ActiveRecord::Migration[7.0]
  def change
    create_table :payments do |t|
      t.integer :amount
      t.text :description
      t.string :currency

      t.timestamps
    end
  end
end
