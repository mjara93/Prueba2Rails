class User < ApplicationRecord
  has_many :items, dependent: :destroy

  validates :name, presence: true
  validates :email, uniqueness: true

  before_save :capitalizar

  def capitalizar
    self.name = self.name.capitalize
  end
end
