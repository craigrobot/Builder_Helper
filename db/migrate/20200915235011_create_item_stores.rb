class CreateItemStores < ActiveRecord::Migration[6.0]
  def change
    create_table :item_stores do |t|
      t.integer :availability
      t.integer :price
      t.references :item, null: false, foreign_key: true
      t.references :store, null: false, foreign_key: true

      t.timestamps
    end
  end
end
