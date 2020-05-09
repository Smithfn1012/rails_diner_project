class Menu < ApplicationRecord
    has_many :items
  
    validates :name, presence: true
  
  
    accepts_nested_attributes_for :items, reject_if: proc { |attributes| attributes['name'].blank? || attributes['description'].blank? || attributes['price'].blank? }
  
    # def items_attributes=(attrs)
    #   binding.pry
    # end
end
