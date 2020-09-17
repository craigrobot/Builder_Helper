class Store < ApplicationRecord
  has_many :item_stores, dependent: :destroy
end
