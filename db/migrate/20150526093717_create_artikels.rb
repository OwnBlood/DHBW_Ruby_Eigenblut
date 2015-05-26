class CreateArtikels < ActiveRecord::Migration
  def change
    create_table :artikels do |t|
      t.string :name
      t.text :text
      t.datetime :datum

      t.timestamps null: false
    end
  end
end
