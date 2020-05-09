class Item < ApplicationRecord
    belongs_to :menu

    validates :name, :price, :description, presence: true
end
