class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string  :name,     null: false
      t.string  :email,    null: false
      t.decimal :balance,  null: false, default: 0
      t.string  :currency, null: false

      t.timestamps null: false
    end
  end
end
