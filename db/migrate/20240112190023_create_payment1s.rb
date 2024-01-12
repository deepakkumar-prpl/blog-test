class CreatePayment1s < ActiveRecord::Migration[7.0]
  def change
    create_table :payment1s do |t|
      t.integer :amount
      t.text :description
      t.string :currency

      t.timestamps
    end
  end
end
