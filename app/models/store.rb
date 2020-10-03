class Store < ApplicationRecord
  has_many :item_stores, dependent: :destroy
  has_many :items, through: :item_stores

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address_line_1?

  def num_of_items_on_list(list)
    Item.joins(:lists, :stores).where(lists: {id: list.id}, stores: {id: self.id}, item_stores: {availability: true}).uniq.count()
  end
end
