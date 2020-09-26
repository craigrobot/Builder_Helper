class Store < ApplicationRecord
  has_many :item_stores, dependent: :destroy
  has_many :items, through: :item_stores

  def num_of_items_on_list(list)
    Item.joins(:lists, :stores).where(lists: {id: list.id}, stores: {id: self.id}, item_stores: {availability: true}).uniq.count()
  end
end
