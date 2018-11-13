class House < ApplicationRecord
  has_many :owners, dependent: :destroy
    validates :Address, presence: true, length: { minimum: 5 }
    has_one_attached :image
  end