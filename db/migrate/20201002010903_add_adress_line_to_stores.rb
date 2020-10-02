class AddAdressLineToStores < ActiveRecord::Migration[6.0]
  def change
    remove_column :stores, :address
    add_column :stores, :address_line_1, :string
    add_column :stores, :address_line_2, :string
  end
end
