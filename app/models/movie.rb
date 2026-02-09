class Movie < ApplicationRecord
  belongs_to :studio
  has_many :cast_members, dependent: :destroy
  has_many :actors, through: :cast_members
end

