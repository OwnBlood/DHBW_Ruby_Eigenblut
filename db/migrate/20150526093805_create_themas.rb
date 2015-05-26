class CreateThemas < ActiveRecord::Migration
  def change
    create_table :themas do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
