class House < ApplicationRecord
    validates :Address, :Owner_Name, presence: true, length: { minimum: 5 }
    has_one_attached :image
  end