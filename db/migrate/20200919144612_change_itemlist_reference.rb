class ChangeItemlistReference < ActiveRecord::Migration[6.0]
  def change
    remove_reference(:item_lists, :store)
    add_reference(:item_lists, :list)
  end
end
