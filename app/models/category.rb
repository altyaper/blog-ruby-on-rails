class Category < ApplicationRecord
  has_many :articles
  belongs_to :user

  delegate :email, to: :user, prefix: true
end
