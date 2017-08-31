class Item < ApplicationRecord
  belongs_to :category
  belongs_to :user, optional: true

  scope :tamaño, ->(x) { where(size: x)}
  scope :sin_usuario, ->{where(user_id: nil)}

  after_destroy :ultimo_item

  def ultimo_item
    Category.all.each do |category|
      if category.items.empty?
        category.destroy
      end
    end
  end
  
end
