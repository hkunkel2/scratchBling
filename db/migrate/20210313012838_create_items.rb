class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.string :name
      t.string :description
      t.text :size
      t.decimal :price, precision: 100, scale: 2

      t.timestamps
    end
  end
end
