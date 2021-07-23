class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true
  has_many :teams
  has_many :leagues, through: :teams
  belongs_to :groups
end
