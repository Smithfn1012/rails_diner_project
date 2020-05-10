class Order < ApplicationRecord
  belongs_to :user
  has_many :order_items
  has_many :items, through: :order_items

  validate :order_must_have_at_least_one_item

  def order_must_have_at_least_one_item
    if item_ids.empty?
      errors.add(:items, "must exist -- choose at least one!")
    end
  end
end
