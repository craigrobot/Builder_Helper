class ItemStore < ApplicationRecord
  belongs_to :item
  belongs_to :store
end
