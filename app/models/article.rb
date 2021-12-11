class Article < ApplicationRecord
  has_one_attached :image

  belongs_to :category
  belongs_to :user

  validates :description, :category_id, presence: true

  delegate :description, to: :category, prefix: true
  delegate :email, to: :user, prefix: true
end
