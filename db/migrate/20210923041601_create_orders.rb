class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.string :name
      t.integer :amount
      t.float :price
      t.belongs_to :company, null: false, foreign_key: true

      t.timestamps
    end
  end
end
