class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.string :description
      t.datetime :date
      t.integer :period
      t.boolean :repeat
      t.integer :cents
      t.timestamps

      t.belongs_to :category
    end
  end
end
