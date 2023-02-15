class Entity < ApplicationRecord
  belongs_to :author, class_name: 'User', foreign_key: 'author_id'
  has_many :memberships, dependent: :destroy
  has_many :groups, through: :memberships
end
