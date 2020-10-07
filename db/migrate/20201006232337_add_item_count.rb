class AddItemCount < ActiveRecord::Migration[6.0]
  def change
    add_column :lists, :project_item_count, :integer
  end
end
