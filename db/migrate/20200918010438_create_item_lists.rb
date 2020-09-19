class CreateItemLists < ActiveRecord::Migration[6.0]
  def change
    create_table :item_lists do |t|
      t.boolean :picked_up
      t.references :item, null: false, foreign_key: true
      t.references :list, null: false, foreign_key: true

      t.timestamps
    end
  end
end
