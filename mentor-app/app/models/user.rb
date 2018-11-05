class User < ApplicationRecord
  has_many :mentee, class_name: 'Pairing', foreign_key: 'mentee_id'
  has_many :mentor, class_name: 'Pairing', foreign_key: 'mentor_id'
end
