class Group < ApplicationRecord
  belongs_to :user
  has_many :memberships, dependent: :destroy
  has_many :entities, through: :memberships

  validates :name, presence: true
  validates :icon, presence: true
end
