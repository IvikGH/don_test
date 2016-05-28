class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :title, null: false
      t.text   :text,  null: false

      t.timestamps null: false
    end
  end
end
