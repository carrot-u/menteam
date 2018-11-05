class Topic < ApplicationRecord
  has_many :pairings
  has_many :user_roles
end
