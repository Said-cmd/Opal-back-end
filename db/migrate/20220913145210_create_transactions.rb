class CreateTransactions < ActiveRecord::Migration[6.1]
  def change
    create_table :transactions do |t|
      t.integer :user_id
      t.datetime :date
      t.string :description
      t.integer :amount
      t.string :category
      t.timestamps
    end
  end
end
