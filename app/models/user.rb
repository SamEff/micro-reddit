class User < ApplicationRecord
  validates :name, presence: true, length: { in: 4..16 }, format: { with: /\A[a-zA-Z]+\z/ }

  has_many :posts
  has_many :comments
end
