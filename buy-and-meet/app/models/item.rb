class Item < ApplicationRecord
    validates :title, :item_description, :condition, :asking_price, presence: true

    belongs_to :user,
    foreign_key: :user_id,
    class_name: 'User'
end
