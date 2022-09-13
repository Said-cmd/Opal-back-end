class CreateTransactions < ActiveRecord::Migration[6.1]
  def change
    create_table :transactions do |t|
      t.date :date
      t.string :description
      t.float :amount
      t.string :category
      t.timestamps
    end
  end
end
