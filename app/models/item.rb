class Item < ApplicationRecord
  belongs_to :category
  belongs_to :user, optional: true

  scope :tamaño, ->(x) { where(size: x)}
  scope :sin_usuario, ->{where(user_id: nil)}
  
end
